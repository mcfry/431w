class RegisteredUsersController < ApplicationController
  def show
    @user = RegisteredUser.find(params[:id])
  end

  def new
  	@user = RegisteredUser.new
  end

  def create
 	  @user = RegisteredUser.new(user_params)

    if params[:registered_user][:password] != params[:registered_user][:password_confirmation]
        flash[:danger] = 'Passwords don\'t match'
        render 'new'
    else
    	if @user.save
        flash[:success] = "Welcome to HelloWorld!, login to continue"
    		redirect_to root_url
    	else 
        
    		  flash[:danger] = 'Invalid username'
    		  render 'new'
      end
  	end
  end
  
  private

    def user_params
      params.require(:registered_user).permit(:username, :password)
    end
end
