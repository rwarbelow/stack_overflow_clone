class User < ActiveRecord::Base
  attr_accessible :name, :email, :password

  validates :name,  presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :email, format: {with: /.+@.+\..+/}, uniqueness: true

  has_many :questions
  has_many :answers
  has_many :comments
  has_many :votes

  has_secure_password
end
