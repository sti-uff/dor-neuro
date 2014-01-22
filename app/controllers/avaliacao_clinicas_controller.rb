class AvaliacaoClinicasController < ApplicationController
 
  def show
    @avaliacao_clinica = AvaliacaoClinica.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @avaliacao_clinica }
    end
  end


end
