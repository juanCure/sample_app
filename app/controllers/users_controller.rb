class UsersController < ApplicationController
  def new
	@user = User.new
  end
  
  def show
	@user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
	  sign_in @user
	  flash[:success] = "Bienvenido a eureka"
	  redirect_to root_url
    else
      render 'new'
    end
  end
end
