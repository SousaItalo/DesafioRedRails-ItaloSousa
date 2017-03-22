class PagesController < ApplicationController
	def home
		@places = Place.all.limit(4)
	end

	def host
		@places = Place.all
		@experiences = Experience.all
	end

end