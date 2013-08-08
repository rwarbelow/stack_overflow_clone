class User < ActiveRecord::Base
  attr_accessible :name, :email, :password

  validates :name,  presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  
  has_secure_password
end