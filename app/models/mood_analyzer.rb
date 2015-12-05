class MoodAnalyzer
    def initialize(entry)
		@entry = entry

	end
	def analyze
	    n = ['sad', 'unhappy', 'hurt','hate','kill']
	    p = ['glad', 'happy', 'help','like','love']
	    o =[]
	    q =[]
	    e = @entry.content.downcase.split
	    (e & n).each do |neg|
	    	o.push(e.count(neg))
	    end
	    (e & p).each do |pos|
	    	q.push(e.count(pos))
	    end
	   	sum = o.sum - q.sum
	   	moodsign(sum)
	   	moodintensity(sum)


	end

	def moodsign(sum)
		if sum > 0
			@entry.negative = false
			@entry.positive = true
		end

		if sum < 0
			@entry.negative = true
			@entry.positive = false
		end
		if sum == 0
			@entry.negative = false
			@entry.positive = false
		end

	end
	def moodintensity (sum)
		@entry.intensity = sum.abs
	end

end
