class EReview < ActiveRecord::Base

	#foreign key e_info_id is implicit
	belongs_to :e_info
	
end
