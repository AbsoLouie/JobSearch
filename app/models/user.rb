class User < ActiveRecord::Base

  attr_accessible :email, :username, :first_name, :last_name

  validates :email, :username, :first_name, :last_name, presence: true
  validates :email, :username, uniqueness: true

end