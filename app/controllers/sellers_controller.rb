class SellersController < ApplicationController
  def new
  	@seller = Seller.new
  end

  def create
  	@seller = Seller.new(email: params[:seller][:email], 
  		address: params[:seller][:address],
  		phone_number: params[:seller][:phone_number],
  		bank_account: params[:seller][:bank_account],
  		company_name: params[:seller][:company_name],
  		registered_user_id: current_user.id)
  	if @seller.save
  		flash[:success] = "Info saved"
  		redirect_to user_url(id: current_user.id)
  	else
  		flash[:danger] = "Save failed, please try again"
  		render "new"
  	end
  end
end