class Vote < ActiveRecord::Base
  attr_accessible :voteable_type, :voteable_id, :direction
  belongs_to :voteable, polymorphic: true
  belongs_to :user
end
