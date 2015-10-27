class AuctionProcess < ActiveRecord::Base

	belongs_to :bid_info
	belongs_to :customer
	
end
