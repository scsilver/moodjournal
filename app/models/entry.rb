class Entry < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: true
	validates :content, presence: true
	def self.search(search)
	  # Title is for the above case, the OP incorrectly had 'name'
	  where("title LIKE ?", "%#{search}%")
	end

end
