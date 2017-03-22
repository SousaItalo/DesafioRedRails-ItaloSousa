class PagesController < ApplicationController
	def home
		@places = Place.all.limit(4)
	end
end