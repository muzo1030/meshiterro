class Favorite < ApplicationRecord
	belongs_to :user # ユーザーとN:1の関係性表記
  	belongs_to :post_image # 投稿とN:1の関係性表記
end
