class VotesController < ApplicationController
  def create
    user_questions_votes = current_user.votes.where(voteable_type:params[:vote][:voteable_type])
    this_question_user_vote = user_questions_votes.find_or_create_by_voteable_id(params[:vote][:voteable_id])
    this_question_user_vote.update_attributes(direction: params[:vote][:direction])
    redirect_to :back
  end
end
