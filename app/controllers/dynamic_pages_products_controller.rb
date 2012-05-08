class DynamicPagesProductsController < ApplicationController
  def smartphones
	@smartphones = Product.select("name, price, model, description").where("category = 1")
  end

  def tablets
	@tablets = Product.select("name, price, model, description").where("category = 2")
  end

  def accessories
	@accessories = Product.select("name, price, model, description").where("category = 3")
  end
end
