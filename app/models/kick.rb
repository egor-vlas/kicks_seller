class Kick < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item


  belongs_to :buyer, class_name: "Profile", optional: true
  belongs_to :seller, class_name: "Profile"
  has_many :line_items
  has_many_attached :pictures, dependent: :destroy

  BRAND = %w{Nike Adidas Puma Converse}
	CONDITION = %w{New Excellent Mint Used Fair Poor}

  private

  def not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end  
  end
end
