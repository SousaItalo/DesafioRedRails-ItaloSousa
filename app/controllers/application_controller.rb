class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  #torna os metodos current_user e logged_in disponiveis para views
  helper_method :current_user, :logged_in?

  def current_user
  	#Retorna o usuário do banco de dados caso exista um id de usuario na sessao
  	#|| abaixo faz com que o metodo atinja o banco de dados apenas uma vez 
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def wanted_place
    @place = Place.find_by(id: params[:place_id])
  end

  def logged_in?
  	#retorna true ou false de acordo com a existencia de um usuario logado
  	!!current_user
  end

  def require_user
  	if !logged_in?
  		flash[:danger] = "Voce deve estar logado no sistema para realizar esta ação"
  		redirect_to root_path
  	end
  end

end
