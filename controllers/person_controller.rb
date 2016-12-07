class PersonController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :balance, :total_sent, :total_received, :email, :password, :avatar)
  end
end
