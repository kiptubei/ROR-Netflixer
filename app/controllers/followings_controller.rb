class FollowingsController < ApplicationController
  def create
    Following.create(followerid: current_user.id, followedid: params[:followed_id])
    redirect_to user_path(params[:followed_id])
  end

  def destroy
    @followings = Following.unfollow(current_user.id, params[:followed_id])
    @followings.destroy
    redirect_to user_path(params[:followed_id])
  end
end