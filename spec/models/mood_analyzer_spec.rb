require 'spec_helper'

describe MoodAnalyzer do
	before(:each ) do
		sign_in current_user
  	it "has a valid factory" do
  		FactoryGirl.create(:entry).should be_valid
  	end
		describe "#analyzer" do
			it "finds sum of weighted words in content" do
			entry = FactoryGirl.build(:entry)
			MoodAnalyzer.new(entry).analyze.should == 1
			end
		end

		describe "#moodsign" do
			it "determines if content is positive negative or neither when sum is 1" do
				sum = 1
				entry = FactoryGirl.build(:entry)
				MoodAnalyzer.new(entry).moodsign(sum)
				entry.positive.should == true
				entry.negative.should == false  
				end
			it "determies if content is positive negative or neither when sum is -1" do
				sum = -1
				entry = FactoryGirl.build(:entry)
				MoodAnalyzer.new(entry).moodsign(sum)
				entry.positive.should == false
				entry.negative.should == true  
				end
			it "determies if content is positive negative or neither when sum is 0" do
				sum = 0
				entry = FactoryGirl.build(:entry)
				MoodAnalyzer.new(entry).moodsign(sum)
				entry.positive.should == false
				entry.negative.should == false  
				end
			end
		describe "#moodintensity" do
			it "finds distance of sum from zero" do
				sum = 1
				entry = FactoryGirl.build(:entry)
				MoodAnalyzer.new(entry).moodintensity(sum)
				entry.intensity.should == 1
			end
		end
	end
end
