class EInfo < ActiveRecord::Base

	has_many :e_reviews, dependent: :destroy
	has_many :e_tags, dependent: :destroy
	has_many :items
	belongs_to :e_category

end
