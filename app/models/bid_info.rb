class BidInfo < ActiveRecord::Base

	belongs_to :item
	has_many :auction_processes

end
