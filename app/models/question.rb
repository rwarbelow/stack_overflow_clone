class Question < ActiveRecord::Base
  attr_accessible :text, :user_id, :title
  belongs_to :user
  has_many :answers
  has_many :comments, as: :commentable

  validates_presence_of :text, :title
end
