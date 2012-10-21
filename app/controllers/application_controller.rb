class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def is_admin_authorized?
    current_user && current_user.is_admin?
  end
  helper_method :is_admin_authorized?

  def authorize_admin!
    raise 'nope' unless is_admin_authorized?
  end
end
