class ProductController < ApplicationController

  def index

  	@einfo = EInfo.where(:id => params[:id]).limit(1)
  	@einfo.each { |ei|
  		@einfo = ei
  	}

  	@cat_array = Array.new
  	make_cat_array(@einfo.e_category_id)

  end

  def make_cat_array(cat1)
  	ECategory.where(:id => cat1).limit(1).each do |cat|
  		if cat.parent_cat_id != 0
  			@cat_array.push(cat.name)
  			make_cat_array(cat.parent_cat_id)
  		else
  			break
  		end
  	end
  end

end
