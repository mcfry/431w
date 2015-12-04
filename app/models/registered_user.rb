class RegisteredUser < ActiveRecord::Base

	validates :username, presence: true, uniqueness: true
	has_many :customers
	has_many :sellers
	has_many :orders
	
end
