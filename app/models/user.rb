class User < ActiveRecord::Base
  include BCrypt
  attr_accessible :name, :email, :password

  validates_uniqueness_of :email
  validates_presence_of :name, :email
  validates :password, presence: true
  
  has_secure_password
end
