class AuctionProcess < ActiveRecord::Base

	belongs_to :bid_info
	belongs_to :registered_user
	
end
