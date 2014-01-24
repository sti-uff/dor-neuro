# encoding: utf-8
class AvaliacaoClinicasController < ApplicationController
 
  def show
    @avaliacao_clinica = AvaliacaoClinica.find(params[:id])
    @exame_fisico = ExameFisico.find_by_avaliacao_clinica_id @avaliacao_clinica.id
    @exame_complemento = @exame_fisico.exame_complemento
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @avaliacao_clinica }
    end
  end


end
