class Vote < ActiveRecord::Base
  attr_accessible :voteable_type, :voteable_id, :direction
  belongs_to :voteable, polymorphic: true
  belongs_to :user

  def self.allow_vote(params, user_id)
    current_user = User.find(user_id)
    user_questions_votes = current_user.votes.where(voteable_type: params[:voteable_type])
    this_question_user_vote = user_questions_votes.find_or_create_by_voteable_id(params[:voteable_id])
    this_question_user_vote.update_attributes(direction: params[:direction])
  end
end
