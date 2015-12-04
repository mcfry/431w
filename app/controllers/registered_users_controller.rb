class RegisteredUsersController < ApplicationController
  def show
    @user = RegisteredUser.find(params[:id])
  end

  def new
  	@user = RegisteredUser.new
  end

  def create
 	@user = RegisteredUser.new(user_params)

  	if @user.save
  		flash[:success] = "Welcome to HelloWorld!"
  		redirect_to @user
  	else
  		render 'new'
  	end

  end
  private

    def user_params
      params.require(:registered_user).permit(:username, :password)
    end
end
