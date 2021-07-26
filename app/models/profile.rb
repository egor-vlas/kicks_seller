class Profile < ApplicationRecord
  belongs_to :user
  has_many :kicks_to_sell, class_name: "Kick", foreign_key: "seller_id"
  has_many :kicks_to_buy, class_name: "Kick", foreign_key: "buyer_id"

  has_many :reviews_to_make, class_name: "Kick", foreign_key: "buyer_id"
  has_many :reviews_to_recieve, class_name: "Kick", foreign_key: "seller_id" 
end
