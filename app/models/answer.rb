class Answer < ActiveRecord::Base
  attr_accessible :text, :question_id
  belongs_to :comment
  has_many :comments, as: :commentable
  belongs_to :user

  validates_presence_of :text
end
