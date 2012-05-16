class DynamicPagesProductsController < ApplicationController
  def smartphones
	#@smartphones = Product.select("name, price, mark, description, image").where("category = 1")
	@smartphones = Product.where("category = 1").paginate(page: params[:page])
	if params[:mark]
		@smartphones = Product.where("category = 1 AND mark = ?", params[:mark]).paginate(page: params[:page])
	end
	if params[:model]
		@smartphones = Product.where("category = 1 AND model = ?", params[:model]).paginate(page: params[:page])
	end
	if params[:start_price]
		@smartphones = Product.where(:category => 1, :price => (params[:start_price].to_i)..(params[:end_price].to_i))
		.order("price ASC")
		.paginate(page: params[:page])
		
	end
  end

  def tablets
	#@tablets = Product.select("name, price, model, description").where("category = 2")
	@tablets = Product.where("category = 3").paginate(page: params[:page])
  end

  def accessories
	#@accessories = Product.select("name, price, model, description").where("category = 3")
	@accessories = Product.where("category = 4 OR category = 2").paginate(page: params[:page])
  end
end
