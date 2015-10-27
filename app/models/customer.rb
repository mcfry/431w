class Customer < ActiveRecord::Base

	belongs_to :registered_user
	has_many :auction_processes
	
end
