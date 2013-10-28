class User < ActiveRecord::Base
  attr_accessible :email, :password_digest

  has_many :posts

  validates_presence_of :email
  validates_presence_of :password

  has_secure_password
  
end
