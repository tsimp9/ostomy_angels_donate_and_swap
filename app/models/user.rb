class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, uniqueness: true

  has_many :supplies
  has_many :reserved_supplies, foreign_key: :reserved_user_id, class_name: "Supply"

  has_many :shippingaddresses

  has_one_attached :avatar

end
