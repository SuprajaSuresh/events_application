class UsersController < ApplicationController

	def new
		@user = User.new
	end
	
	def create
		@user = User.new(params[:user])
    if @user.save
    	flash[:notice] = "Welcome!"
      sign_in @user
      redirect_to root_path
    else
      render 'new'
    end
	end
  
  def show
    @user = User.find(params[:id])
  end
end
