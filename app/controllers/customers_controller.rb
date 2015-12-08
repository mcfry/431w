class CustomersController < ApplicationController
  def new
  	@customer = Customer.new
  end

  def create
  	@customer = Customer.new(email: params[:customer][:email], 
  		shipping_address: params[:customer][:shipping_address],
  		phone_number: params[:customer][:phone_number],
  		registered_user_id: current_user.id)
  	if @customer.save
  		flash[:success] = "Info saved"
  		redirect_to user_url(id: current_user.id)
  	else
  		flash[:danger] = "Save failed, please try again"
  		render "new"
  	end
  end
end
