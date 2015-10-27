class RegisteredUser < ActiveRecord::Base

	has_many :customers
	has_many :sellers
	
end
