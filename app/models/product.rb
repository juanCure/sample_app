class Product < ActiveRecord::Base
  self.per_page = 6
  attr_accessible :description, :image, :mark, :model, :name, :price, :category
end
