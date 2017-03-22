class UsersController < ApplicationController

	before_action :set_user, only: [:edit, :update, :show]
	before_action :require_logged_in, only: [:edit, :update]
	before_action :require_same_user, only: [:edit, :update]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Hey #{@user.name}, welcome to Airbnb-test! :D"
			redirect_to signup_path
		else
			render 'new'
		end
	end

	def show
		
	end

	def edit

	end

	def update
		if @user.update(user_params)
			flash[:success] = "Seus dados foram atualizados"
			redirect_to root_path
		else
			render 'edit'
		end
	end

	private
		def user_params
			params.require(:user).permit(:name, :username, :email, :password)
		end

		def set_user
			@user = User.find(params[:id])
		end
		
		def require_logged_in
			if !logged_in?
				flash[:danger] = "Você deve estar logado para editar dados"
				redirect_to root_path
			end
		end

		def require_same_user
			if current_user != @user
				flash[:danger] = "Você so pode alterar seus proprios dados"
				redirect_to root_path
			end
	end
end