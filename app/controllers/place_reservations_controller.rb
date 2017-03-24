class PlaceReservationsController < ApplicationController
	
	before_action :set_place_reservation, only: [:destroy]

	def index
		@place_reservations = PlaceReservation.paginate(page: params[:page], per_page: 8)
	end

	def new
		@place = Place.find(params[:place_id])
		@place_reservation = @place.place_reservations.new
	end

	def create
		@reservation = PlaceReservation.new(place_reservation_params)
		if @reservation.save
			redirect_to root_path
			flash[:success] = "cadastrado com sucesso:D"
		else
		flash[:success] = @reservation.errors.full_messages
		render 'new'
		end
	end

	def destroy
		@place_reservation.destroy
		render 'index'
	end

	private
	def place_reservation_params
		params.require(:place_reservation).permit(:data_entrada, :data_saida, :place_id, :user_id,)
	end

	def set_place_reservation
		@place_reservation = PlaceReservation.find(params[:id])
	end
end