from TwitterSearch import *
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_extraction.text import TfidfTransformer
from nltk.corpus import stopwords
from nltk.stem.snowball import SnowballStemmer
from sklearn.naive_bayes import MultinomialNB
import pdb
import neglist_token
import poslist_token
import redditor
import numpy as np
import pusherclient
import time
import sys
import json
import os

sys.path.append('..')

# Add a logging handler so we can see the raw communication data
statement = sys.argv[1]


from pusher import Pusher as Push



push = Push(app_id=u'146837', key=u'60dbe63931b29368c58c', secret=u'6f0fac727cfb5a675818')
count_vect = CountVectorizer()
tfidf_transformer = TfidfTransformer()


stemmer = SnowballStemmer("english")
sw = stopwords.words("english")
tweet_list = []
neg_trainer = neglist_token.NegList()
pos_trainer = poslist_token.PosList()

count = 0
# while True:
#     tso = TwitterSearchOrder()  # create a TwitterSearchOrder object
#     # let's define all words we would like to have a look for
#     tso.set_keywords(['+exclude:retweets'])
#     tso.set_geocode(48.856614, 2.3522219000000177, 20, imperial_metric=True)
#     tso.set_result_type('recent')
#     tso.set_language('en')  # we want to see German tweets only
#     # and don't give us all those entity information
#     tso.set_include_entities(False)
#
#     # it's about time to create a TwitterSearch object with our secret tokens
#     ts = TwitterSearch(
#         consumer_key='BDZszRdd15DRH1mEu8zTO2KjR',
#         consumer_secret='fQ2feMYYTQG4p0OcE9z5qTOHFbGsVOdgSvc1Mt4nTjh7s5OFU7',
#         access_token='239691362-TpQRih49vRDOMF4bkCvNkYwWdWr5QopaTjWkJWNn',
#         access_token_secret='iXpA0c7UNKkZBewSwUJQDrJOuqx8CGVKNQLMFwN1h2r1Y'
#     )
#
#     # this is where the fun actually starts :)
#     for tweet in ts.search_tweets_iterable(tso):
#         count = count + 1
#         tweet_list.append(tweet['text'].encode('ascii', 'ignore').lower())
#         if count == 10:
#             break
#     break
#print tweet_list
# split to invidual words and remove stop words
#tweet_stop = [word for sentence in tweet_list for word in sentence.split(
#    " ") if word not in sw]
neg_stop_trainer = [word for sentence in neg_trainer for word in sentence.split(
    " ") if word not in sw]
pos_stop_trainer = [word for sentence in pos_trainer for word in sentence.split(
    " ") if word not in sw]

# stem words
#tweet_list_stop_stem = [stemmer.stem(
#    word).encode('ascii') for word in tweet_stop]
neg_stop_stem_trainer = [stemmer.stem(word).encode(
    'ascii') for word in neg_stop_trainer]
pos_stop_stem_trainer = [stemmer.stem(word).encode(
    'ascii') for word in pos_stop_trainer]

vectorizer = CountVectorizer()

tfidf = TfidfVectorizer(sublinear_tf=True, max_df=1.0, min_df=0.0)
#x = tfidf.fit_transform(tweet_list_stop_stem)
#t_idf = tfidf.idf_
#t_dictionary = dict(zip(tfidf.get_feature_names(), t_idf))

neg_train = []
pos_train = []

all_classes = np.array(['positive','negative'])
for l in range(len(pos_trainer)):
    pos_train = pos_train+['positive']
for l in range(len(neg_trainer)):
    neg_train = neg_train+['negative']
y_train = pos_train+neg_train
X_train = tfidf.fit_transform(pos_trainer+neg_trainer)
#n_tf = tfidf.fit_transform(neg_trainer)

clf = MultinomialNB().fit(X_train, y_train)
#clf = MultinomialNB().partial_fit(n_tf, neg_train)

#clf.partial_fit(n_tf, neg_train)



fn = tfidf.get_feature_names()
stop = tfidf.get_stop_words()

if statement == 'red':
    comment_list = redditor.redditor()


    for comment in range(len(comment_list)):
        statement = comment_list[comment]
        X_test = tfidf.transform(np.array([statement]))
        predicted = clf.predict(X_test)
        prob = clf.predict_proba(X_test)
        print "Tweet: " + str(l)
        print statement
        print predicted, prob

X_test = tfidf.transform(np.array([statement]))
predicted = clf.predict(X_test)
prob = clf.predict_proba(X_test)
print "Tweet: " + str(l)
print statement
print predicted, prob
n_prob = str(prob[0][0])
p_prob = str(prob[0][1])
push.trigger(u'result_channel', u'result_event', {u'statement': statement, u'prediction': predicted.tolist(), u'probabilityn': n_prob, u'probabilityp': p_prob} )

os.system("ruby script.rb")
