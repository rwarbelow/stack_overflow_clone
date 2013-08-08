class Answer < ActiveRecord::Base
  attr_accessible :text, :question_id
  belongs_to :question
  belongs_to :user
  has_many :comments, as: :commentable

  validates_presence_of :text
end
