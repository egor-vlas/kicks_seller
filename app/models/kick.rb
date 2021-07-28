class Kick < ApplicationRecord
  belongs_to :buyer, class_name: "Profile", optional: true
  belongs_to :seller, class_name: "Profile"

  has_many_attached :pictures
end
