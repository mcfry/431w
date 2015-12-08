class SearchController < ApplicationController

	def index

		@all = EInfo.all
		@search_array = Array.new

		@all.each do |info|
			if info.title =~ /#{params[:search]}/i
				@search_array.push(info)
				# redirect_to product_url(id: info.id)
				# return
			end
		end

		if @search_array.blank?
			flash.now[:warning] = 'Search returned no results, please try a different query'
		end
		
	end

end
