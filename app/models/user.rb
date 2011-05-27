class User < ActiveRecord::Base

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :timeoutable, :lockable

  attr_accessible :email, :password, :password_confirmation, :remember_me

end
