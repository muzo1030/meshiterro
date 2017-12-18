class PostImage < ApplicationRecord

	attachment :image # （_idは含めません）
	belongs_to :user # ユーザーとN:1の関係性表記
	has_many :favorites, dependent: :destroy # いいねと1:Nの関係性表記
	has_many :post_comments, dependent: :destroy # コメントと1:Nの関係性表記

	validates :shop_name, presence: true # 店名の入力チェック
    validates :image, presence: true # 画像の入力チェック

		 def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
         end
end