class Order < ActiveRecord::Base

	belongs_to :item
	belongs_to :registered_user
	has_many :customer_reviews

end
