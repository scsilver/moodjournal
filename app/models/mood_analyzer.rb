class MoodAnalyzer 
    def initialize(entry)
		@entry = entry

	end
	def analyze
	   
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
