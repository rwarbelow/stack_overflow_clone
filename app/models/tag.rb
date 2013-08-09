class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :question_tags
  has_many :questions, through: :question_tags

end
