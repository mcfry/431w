class Order < ActiveRecord::Base

	belongs_to :item
	belongs_to :customer
	has_many :customer_reviews

end
