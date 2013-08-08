class UserQuestionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    if current_user.id == @user.id
      @questions = @user.questions
    else
      redirect_to root_path
    end
  end
end
