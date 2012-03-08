class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :username, :email, :password, :password_confirmation
  
  validates_confirmation_of :password
  validates :password, :presence => true, :on => :create
  validates :email, :presence => true
  validates :username, :presence => true
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  
end
