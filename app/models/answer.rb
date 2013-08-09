class Answer < ActiveRecord::Base
  attr_accessible :text, :question_id
  belongs_to :question
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :votes,    as: :voteable

  validates_presence_of :text, :question_id, :user_id
end
