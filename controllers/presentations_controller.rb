class PresentationsController < ApplicationController
  def new
    @presentation = Presentation.new
  end

  def create
  end

  def add_presentation
    @presentation = current_user.presentation.build(friend_id: params[:friend_id])
    flash[:success] = 'Presentation Added' if @presentation.save
  end

  def presentation_params
    params.require(:user).permit(:user_name, :bio, :email, :password, :avatar)
  end

  private
  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end
end
