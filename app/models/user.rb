class User < ActiveRecord::Base
  has_many :contents
  has_many :comments

	has_many :adventures
  has_many :monsters
  has_many :terrains

  validates_presence_of :login, :name, :email, :password, :type_id

  acts_as_authentic
end
