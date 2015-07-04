class Entry < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: true
	validates :content, presence: true
	validates :user_id, presence: true

    include Tire::Model::Search
    include Tire::Model::Callbacks
end
