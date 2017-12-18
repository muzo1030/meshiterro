class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :post_images # 投稿と1:Nの関係性表記
  has_many :post_comments, dependent: :destroy # コメントと1:Nの関係性表記
  has_many :favorites, dependent: :destroy # いいねと1:Nの関係性表記

  attachment :profile_image
end
