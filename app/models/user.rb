class User < ApplicationRecord
  # devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :communities
  has_many :posts, through: :communities
end
