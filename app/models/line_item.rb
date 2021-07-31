class LineItem < ApplicationRecord
  belongs_to :kick
  belongs_to :cart

  def total_price
    kick.price.to_i * quantity.to_i
  end
end
