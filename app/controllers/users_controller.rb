class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @fishing_reports = @user.fishing_reports.all
  end

  private

  def user_params
    params.require(:user).permit(:username, :email)
  end

end