class EventsController < ApplicationController
	
	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
	end

	def add_user
		@events_users = EventsUsers.new(:event_id => params[:id], :user_id => params[:user_id])
	  if @events_users.save
	   	redirect_to :back	   	
	  end
	end
end
