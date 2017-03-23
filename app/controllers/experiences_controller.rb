class ExperiencesController < ApplicationController
	def index
		@experiences = Experience.all
	end

	def new
		@experience = Experience.new
	end

	def create
		
		@experience = Experience.new(experience_params)
		@experience.user = current_user
		
		if @experience.save
			flash[:success] = "#{@experience.name} cadastrada com sucesso:D"
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		@experience = Experience.find(params[:id])
	end

	private
		def experience_params
			params.require(:experience).permit(:name, :description, :people_qtd, :country, :city)
		end
end