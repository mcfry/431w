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
  		flash.now[:success] = "Welcome to HelloWorld!, login to continue"
  		redirect_to @user
  	else
  		flash.now[:danger] = 'Invalid username'
  		render 'new'
  	end

  end
  private

    def user_params
      params.require(:registered_user).permit(:username, :password)
    end
end
