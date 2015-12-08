class SessionsController < ApplicationController
  def new
  end

  def create
  	user = RegisteredUser.find_by(username: params[:session][:username])
  	if user && user.password == params[:session][:password]
  		flash.now[:success] = "Welcome back " + user.username + "!"
  		log_in user
  		redirect_to user
  	else
  		flash.now[:danger] = 'Invalid username/password combination'
  		render 'new'
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end
end
