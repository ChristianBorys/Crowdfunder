class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :first_name, :last_name, :username, :email, :password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :first_name, :last_name, :username, :email 

  has_many :projects
  has_many :pledges
end
