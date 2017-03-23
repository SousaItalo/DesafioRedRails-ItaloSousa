class PagesController < ApplicationController
	def home
		@places = Place.all.order('id desc').limit(4)
		@experiences = Experience.all.order('id desc').limit(4)
	end

	def host
		@places = current_user.places
		@experiences = current_user.experiences
	end

end