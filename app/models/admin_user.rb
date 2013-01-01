class AdminUser < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password

  validates_presence_of :email
  validates_uniqueness_of :email
end
