class Admin::UsersController < Admin::SessionsController
  def index
    @users = AdminUser.all
  end

  def new
    @user = AdminUser.new
  end

  def create
    @user = AdminUser.new(params[:admin_user])
    if @user.save
      redirect_to admin_users_path
    else
      flash[:notice] = "Error saving user"
      redirect_to admin_users_path
    end
  end

  def destroy
    AdminUser.find(params[:id]).destroy
    flash[:notice] = "User destroyed"
    redirect_to admin_users_path
  end
end
