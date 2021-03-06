class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionHelper

  #Force signout to avoid CSRF attacks
  def handle_unverified_request
  	sign_out
  	super
  end

end
