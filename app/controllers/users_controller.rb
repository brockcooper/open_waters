class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @fishing_reports = @user.fishing_reports.all
  end

  def update
    if current_user.update_attributes(user_params)
     flash[:notice] = "User information updated"
   else
     flash[:error] = "Invalid user information"
   end
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :about_me)
  end

end