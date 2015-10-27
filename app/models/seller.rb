class Seller < ActiveRecord::Base

	belongs_to :registered_user
	has_many :e_infos

end
