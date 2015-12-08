require 'descriptive_statistics'

class NaiveBayes

  def initialize()
    @data_train = InquirerClassDatabase.all
  #  @dimension = dimension
  end

  def num_classes
    return (@data_train.column_names - ["id"]).length
  end

  def classes
    return (@data_train.column_names - ["id"])
  end

  def feature_set(index, class_name)
    feature_set = []
    training_set = @data_train[class_name]

    training_set.length.times do |i|
      feature_set << training_set[i][index]
    end

    return feature_set
  end

  def feature_probability(index, feature_values, class_name)
    #fs = feature_set(index, class_name)
  #  fs_std = fs.standard_deviation
    #fs_mean = fs.mean
    #fs_var = fs.variance
    feature_values & corpus
    #if fs_std == 0
    #  return fs_mean == value ? 1.0 : 0.0
    #end

    #pi = Math::PI
    #e = Math::E
    #count_in_class =
    #prob =
    #exp = -((value - fs_mean)**2)/(2*fs_var)
    #prob = (1.0/(Math.sqrt(2*pi*fs_var))) * (e**exp)

    return prob
  end

  def feature_mult(feature_values, class_name)
    res = 1.0
    feature_values.length.times do |i|
      res *= feature_probability(i, feature_values, class_name)
    end

    return res
  end

  def class_probability(feature_values, class_name)
    class_fraction = 1.0/num_classes
    class_features = []
    feature_values = feature_values.split
    #feature_bayes = feature_mult(feature_values, class_name)
    class_count = @data_train.where("#{class_name} IS NOT NULL").count
    @data_train.where("#{class_name} IS NOT NULL").each do |n|
      class_features.append(n[class_name])
    end

    prob_class = ((class_features & feature_values).count.to_f)/class_count.to_f
    res = prob_class
    print class_name.to_s + " " + prob_class.to_s
    return res
  end

  def classify(feature_values)
    result_array=Hash.new()

    res = classes.sort_by do |class_name|
      result_array.store(class_name,(class_probability(feature_values, class_name)))
    end

    result_array = result_array.sort_by {|_key, value| value}.reverse
    result_array = result_array.to_h
    return result_array

  end
end
