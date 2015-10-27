class ShopController < ApplicationController

  def index

  	@shop_array = Array.new
    length = EInfo.all().length

  	(16).times do
  		push_rand(length)
  	end

  end

  def push_rand(length)
  	num = 1 + rand(length)

  	if (@shop_array.include?(num))
  		push_rand(length)
  	else
  		@shop_array.push(num)
  	end

  end
  
end
