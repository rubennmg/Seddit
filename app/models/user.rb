class User < ApplicationRecord
  # devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :communities
  has_many :posts, through: :communities do
    def by_current_user
      where(user_id: proxy_association.owner.id)
    end
  end
end
