class ExperiencesController < ApplicationController
	
	before_action :require_user, except: [:index, :show, :edit]
	before_action :set_experience, only: [:edit, :update, :show, :destroy]

	def index
		@experiences = Experience.paginate(page: params[:page], per_page: 4).order('id DESC')
	end

	def new
		@experience = Experience.new
	end

	def create
		
		@experience = Experience.new(experience_params)
		@experience.user = current_user
		
		if @experience.save
			flash[:success] = "#{@experience.name} cadastrada com sucesso:D"
			redirect_to host_path
		else
			render 'new'
		end
	end

	def show

	end

	def edit

	end

	def update
		if @experience.update(experience_params)
			flash[:success] = "Seus dados foram atualizados"
			redirect_to  experience_path(@experience)
		else
			render 'edit'
		end
	end

	def destroy
		@experience.destroy
		flash[:notice] = "Experiencia deletada! :("
		redirect_to host_path
	end

	private
		def experience_params
			params.require(:experience).permit(:name, :description, :people_qtd, :country, :city, :picture, :price)
		end
		def set_experience
			@experience = Experience.find(params[:id])
		end
end