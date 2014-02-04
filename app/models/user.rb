class User < ActiveRecord::Base

  has_secure_password

  validates :email, :username, :first_name, :last_name, :password, presence: true
  validates :email, :username, uniqueness: true

end