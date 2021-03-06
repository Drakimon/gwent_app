class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  private
  
    # Confirms that the user is logged in
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_path
      end
    end
    
    # Confirms an admin user
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
