class UsersController < ApplicationController
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
	@user = User.find(params[:id])
end

	private
	def user_params
		params.require(:user).permit(:name, :username, :email, :password)
	end
end