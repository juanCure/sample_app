class LineItem < ActiveRecord::Base
  attr_accessible :cart_id, :product_id, :product, :id, :updated_at, :created_at, :cart, :quantity
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  
  def total_price
    product.price * quantity
  end
end
