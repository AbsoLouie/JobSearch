class User < ActiveRecord::Base

  has_secure_password

  attr_accessible :email, :username, :first_name, :last_name, :password

  validates :email, :username, :first_name, :last_name, :password, presence: true
  validates :email, :username, uniqueness: true

end