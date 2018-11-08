class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, uniqueness: true

  has_many :supplies
  # has_many :available_supplies through :supplies

  # has_many :supplies
  # has_many :needed_supplies through :supplies

  has_many :shippingaddresses

  has_one_attached :avatar

end
