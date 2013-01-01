class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_user
    begin
      @current_user ||= AdminUser.find(session[:user_id]) if session[:user_id]
    rescue
      nil
    end
  end

  def check_auth
    redirect_to new_admin_session_path unless current_user
  end

  helper_method :current_user
end
