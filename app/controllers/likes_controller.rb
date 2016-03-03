class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, style_id: params[:style_id])
    @likes = Like.where(style_id: params[:style_id])
    @style = Style.find(params[:style_id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, style_id: params[:style_id])
    like.destroy
    @likes = Like.where(style_id: params[:style_id])
    @style = Style.find(params[:style_id])
  end
end
