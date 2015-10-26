class HomeController < ApplicationController

  def index
  	
  	@einfo = EInfo.all()

  	#debug
  	@einfo.each { |info|
      puts "----i----"
      puts info.title
  		puts info.description
      puts info.e_category.name
      puts info.id
  	}

  	@categories = ECategory.all()

    @categories.each { |cat|
      puts "----c----"
    	puts cat.name
    	puts cat.parent_cat_id
    }

  end

end
