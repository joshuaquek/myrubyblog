class Category < ActiveRecord::Base
	has_many :posts
	validates :name, presence: true , type: string
end
