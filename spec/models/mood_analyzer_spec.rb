require 'spec_helper'

describe MoodAnalyzer do
  	it "has a valid factory" do
  		FactoryGirl.create(:entry).should be_valid
  	end
		describe "#analyzer" do
			it "finds sum of weighted words in content" do
			entry = FactoryGirl.build(:entry)
			MoodAnalyzer.new(entry).analyze.should == 1
			end
		end
end
