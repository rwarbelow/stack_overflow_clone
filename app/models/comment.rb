class Comment < ActiveRecord::Base
  attr_accessible :text
  belongs_to :commentable, polymorphic: true
  belongs_to :user
end
