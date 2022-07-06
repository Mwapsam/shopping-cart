class Product < ApplicationRecord
  has_many :orderables
  has_many :carts, through: :orderables
  has_one_attached :image

  def total_price
    price * quantity
  end
end
