class Item < ActiveRecord::Base

	belongs_to :e_info
	has_one :order
	
end
