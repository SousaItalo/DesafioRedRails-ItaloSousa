class PlacesController < ApplicationController
	
	before_action :require_user, except: [:index, :show]

	def index
		@places = Place.all
	end

	def new
		@place = Place.new
	end

	def create
		
		@place = Place.new(place_params)
		@place.user = current_user
		
		if @place.save
			flash[:success] = "#{@place.name} cadastrado com sucesso:D"
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		@place = Place.find(params[:id])
	end

	def destroy
	end

	private
		def place_params
			params.require(:place).permit(:name, :description, :beds_qtd, :country, :city)
		end
end