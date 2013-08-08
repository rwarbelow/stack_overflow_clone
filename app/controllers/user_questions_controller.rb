class UserQuestionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @questions = @user.questions
  end
end
