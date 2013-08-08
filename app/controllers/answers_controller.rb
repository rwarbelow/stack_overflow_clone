class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answerer = User.find(session[:id])
    @answer = @answerer.answers.new(text: params[:answer][:text],
                                    question_id: params[:question_id])
    if @answer.valid?
      @answer.save
      redirect_to questions_path(params[:question_id])
    else
      @errors = @answer.errors.full_messages
      render 'new'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  def update
    @answer = Answer.find(params[:id])
    @answer.update_attributes(params[:answer])
    redirect_to questions_path(params[:id])
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to root_path
  end
end



