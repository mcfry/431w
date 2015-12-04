class SessionsController < ApplicationController
  def new
  end

  def create
  	user = RegisteredUser.find_by(username: params[:session][:username])
  	if user && user.password == params[:session][:password]
  		flash[:success] = "Welcome back " + user.username + "!"
  		log_in user
  		redirect_to root_url
  	else
  		flash[:danger] = 'Invalid username/password combination'
  		render 'new'
  	end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end
end
