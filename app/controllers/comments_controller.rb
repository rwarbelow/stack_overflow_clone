class CommentsController < ApplicationController
  def new
    @user = current_user
    @comment = Comment.new
  end

  def create
    @user = current_user
    @user.comments << Comment.create(params[:comment])
    redirect_to :back
  end

end
