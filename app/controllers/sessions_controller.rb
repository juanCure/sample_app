class SessionsController < ApplicationController
	def new
	end
	
	def create
		#render 'new'
		user = User.find_by_email(params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			#Sign the user in and redirect to the user's show page
			sign_in user
			redirect_to root_url
		else
			#Create an error message and re-render the singin form
			flash.now[:error] = 'Invalido email/password combinacion' # Not quite right!
			render 'new'
		end
	end
	
	def destroy
		sign_out
		redirect_to root_path
	end
end
