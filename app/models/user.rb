class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :login

  #Validations
  validates :first_name, length: {:in => 2..50}
  validates :last_name, length: {:in => 2..50}
  validates :email, uniqueness: true, presence: true
  validates :login, uniqueness: true, presence: true
end