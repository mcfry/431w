class SearchController < ApplicationController

	def index

		@all = EInfo.all
		@search_array = Array.new

		@all.each do |info|
			if info.title =~ /#{params[:search]}/
				redirect_to product_url(id: info.id)
				return
			end
		end
		
	end

end
