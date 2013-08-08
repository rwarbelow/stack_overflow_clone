class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(params[:question])
    # user = User.
    if @question.valid?
      # user.questions << @question
      @question.save
      redirect_to questions_path
    else
      render 'new'
    end
  end



end
