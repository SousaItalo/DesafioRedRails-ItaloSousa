class PagesController < ApplicationController
	def home
		@places = Place.all.order('id desc').limit(8)
	end
	

	def host
		@place = Place.new
	end

	def myoffers
		@places = current_user.places
		@my_places_reserves = PlaceReservation.joins(:user, :place).where("cast(places.user_id as text) = cast(#{current_user.id} as text)")

	end
end