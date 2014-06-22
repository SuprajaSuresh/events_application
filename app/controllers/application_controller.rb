class ApplicationController < ActionController::Base
  protect_from_forgery

  include SessionsHelper

  def login_required
    redirect_to root_path, :alert => 'Please login to attend the event.' unless signed_in?
  end

end
