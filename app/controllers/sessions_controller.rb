class SessionsController < ApplicationController

  def new
  end
 
  def create
  	user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
    	sign_in user
      flash[:notice] = 'Welcome!'
    	redirect_to root_path
    else 
      render 'new'
      flash[:error] = 'Invalid email or password'
    end
  end
  
  def destroy
    sign_out
    flash[:notice] = 'You have been logged out'
    redirect_to root_path
  end 
end
