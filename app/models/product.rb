class Product < ActiveRecord::Base
  attr_accessible :description, :image, :mark, :model, :name, :price, :category
end
