class FriendshipsController < ApplicationController
  def new
    @friendship = Friendship.new
  end

  def create
  end

  def add_friend
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    flash[:success] = 'Friend Added' if @friendship.save
    redirect_to user_path(params[:friend_id])
  end

  private
  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end
end
