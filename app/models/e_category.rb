class ECategory < ActiveRecord::Base

	has_one :e_info

	has_many :sub_cats, class_name: "ECategory", foreign_key: "parent_cat_id"

	# foreign key parent_cat_id is implicit
	belongs_to :parent_cat, class_name: "ECategory"
	
end
