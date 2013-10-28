class User < ActiveRecord::Base
  attr_accessible :email, :password
  

  include BCrypt

  has_many :posts
  has_many :comments

  validates_presence_of :email
  validates_presence_of :password

  has_secure_password


  
end
