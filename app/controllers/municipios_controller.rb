class MunicipiosController < ApplicationController
  
  def listar_municipios
    q = params[:q].split(' ').join('%')
    @municipios = Municipio.where('nome like ?', "%#{q}%").includes(:uf).order("nome").
      collect{|m| {:id => "#{m.id}", :name => "#{m.nome} - #{m.uf.sigla}"}}
    if request.xhr?           #isso quer dizer que é uma requisição ajax
      render :json => @municipios
    else
      render :text => ""
    end
  end
  
end
