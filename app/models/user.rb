class User < ApplicationRecord

  has_many :menus
  has_many :reviews
  has_one :Restaurant, through: :menus
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
