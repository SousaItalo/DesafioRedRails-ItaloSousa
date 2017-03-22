class SessionsController < ApplicationController
	
	def new
	
	end

	def create
		
		user = User.find_by(username: params[:session][:username].downcase)
		
		if user && user.authenticate(params[:session][:password])
			
			session[:user_id] = user.id
			flash[:succes] = "Login realizado com sucesso"
			redirect_to root_path
		else
			
			flash.now[:danger] = "Email ou senha incorretos"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "You have logged out"
		redirect_to places_path
	end

end
