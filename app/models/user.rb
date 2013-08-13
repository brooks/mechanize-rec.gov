class User < ActiveRecord::Base
  validates_presence_of :email, :password
  validates_uniqueness_of :email
end
