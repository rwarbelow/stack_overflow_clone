class Answer < ActiveRecord::Base
  attr_accessible :text, :question_id
  belongs_to :comment
  has_many :comments, as: :commentable

  validates_presence_of :text

end
