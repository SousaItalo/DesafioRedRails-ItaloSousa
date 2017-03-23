class PlacesController < ApplicationController
	
	before_action :require_user, except: [:index, :show, :edit]
	before_action :set_place, only: [:edit, :update, :show, :destroy]
	
	def index
		@places = Place.paginate(page: params[:page], per_page: 4).order('id DESC')
	end

	def new
		@place = Place.new
	end

	def create
		
		@place = Place.new(place_params)
		@place.user = current_user
		
		if @place.save
			flash[:success] = "#{@place.name} cadastrado com sucesso:D"
			redirect_to host_path
		else
			render 'new'
		end
	end

	def show
		@place = Place.find(params[:id])
	end

	def edit

	end

	def update
		if @place.update(place_params)
			flash[:success] = "Seus dados foram atualizados"
			redirect_to  place_path(@place)
		else
			render 'edit'
		end
	end

	def destroy
		@place.destroy
		flash[:notice] = "Oferta de lugar excluida! :("
		redirect_to host_path
	end

	private
		def place_params
			params.require(:place).permit(:name, :description, :beds_qtd, :country, :city, :picture, :price)
		end

		def set_place
			@place = Place.find(params[:id])
		end
end