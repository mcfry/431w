class Seller < ActiveRecord::Base
	validates :registered_user_id, presence: true, uniqueness: true
	belongs_to :registered_user
	has_many :e_infos

end
