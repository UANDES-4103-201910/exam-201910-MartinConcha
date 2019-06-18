class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :addresses, :dependent => :destroy
	has_many :orders, :dependent => :destroy

	validates :name, presence: true
	validates :last_name, presence: true
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true, presence: true


end
