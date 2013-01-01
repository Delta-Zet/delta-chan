class Admin::SessionsController < Admin::DashboardController
  before_filter :check_auth, only: [:destroy]

  def new
  end

  def create
    user = AdminUser.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_root_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to admin_root_path, :notice => "Logged out!"
  end
end
