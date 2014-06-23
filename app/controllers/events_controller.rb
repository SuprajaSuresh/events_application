class EventsController < ApplicationController
	
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def add_user
		@event = Event.find(params[:id])
		@user = User.find(params[:user_id])
		if @event.users << @user
			redirect_to :back
		end
	end

	def remove_user
		@event = Event.find(params[:id])
		@user = User.find(params[:user_id])
		if @event.users.delete(@user)
			redirect_to :back
		end
	end

end
