class Comment < ActiveRecord::Base
  attr_accessible :text, :commentable_id, :commentable_type
  belongs_to :commentable, polymorphic: true
  belongs_to :user
end
