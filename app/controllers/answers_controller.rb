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
end

# class QuestionsController < ApplicationController

#   def create
#     @question = Question.new(params[:question])
#     user = User.find(session[:id])
#     if @question.valid?
#       @question.save
#       user.questions << @question
#       redirect_to questions_path
#     else
#       render 'new'
#     end
#   end

#   def show
#     @question = Question.find(params[:id])
#   end

#   def edit
#     @question = Question.find(params[:id])
#   end

#   def update
#     @question = Question.find(params[:id])
#     @question.update_attributes(params[:question])
#     redirect_to question_path
#   end

#   def destroy
#     @question = Question.find(params[:id])
#     @question.destroy
#     redirect_to root_path
#   end
# end
