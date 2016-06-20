class User < ActiveRecord::Base
  validates :name, :username, :password, :presence => true
end
