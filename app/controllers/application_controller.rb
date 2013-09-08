class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_usuario!
  
  def home
    session.delete :voluntario
    session.delete :usuario
    session.delete :numero
  end
  
  def principal
    session.delete :voluntario
    session.delete :usuario
    session.delete :numero
  end
  
  def pre_selecao
  end
  
  def agenda_menu
  end
  
  def selecao_menu
  end
  
  def eventos_adversos_menu
  end
  
  def alocacao
  end
  
  def execucao
    session.delete :numero
  end
  
  def admin
  end
  
  def escolher_voluntario
    session[:voluntario] = params[:voluntario]
    session[:usuario] = params[:usuario]
    session[:numero] = params[:numero]
    redirect_to params[:pagina]
  end
  
  # def alterar_voluntario
  #   session[:voluntario] = params[:voluntario]
  #   redirect_to params[:pagina]
  # end
  
end
