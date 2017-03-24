class PagesController < ApplicationController
	def home
		@places = Place.all.order('id desc').limit(4)
	end

	def host
		@place = Place.new
	end

	def myoffers
		@places = current_user.places
	end
end