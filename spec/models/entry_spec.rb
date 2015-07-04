require 'spec_helper'

describe Entry do
  	it "has a valid factory" do
  		FactoryGirl.create(:entry).should be_valid
  	end
  	[:title, :content, :user_id].each do |attr| 
		it "is invalid without a #{attr}" do
			 FactoryGirl.build(:entry, attr => nil).should_not be_valid 
		end
	end

end
