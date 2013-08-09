class UserAnswersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @answers = @user.answers
  end
end
