class EInfo < ActiveRecord::Base

	has_many :e_reviews, dependent: :destroy
	has_many :e_tags, dependent: :destroy
	has_one :e_category

end
