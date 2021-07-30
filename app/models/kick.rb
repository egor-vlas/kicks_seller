class Kick < ApplicationRecord
  belongs_to :buyer, class_name: "Profile", optional: true
  belongs_to :seller, class_name: "Profile"

  has_many_attached :pictures, dependent: :destroy

  BRAND = %w{Nike Adidas Puma Converse}
	CONDITION = %w{New Excellent Mint Used Fair Poor}
end
