class HomeController < ApplicationController

  def index
  	
  	@einfo = EInfo.all()

  	#debug
  	@einfo.each { |info|
  		puts info.description
  		puts info.title
  	}

  	@categories = ECategory.all()

    @categories.each { |cat|
    	puts cat.name
    	puts cat.parent_cat_id
    }

  end

end
