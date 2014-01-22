class ExameFisicosController < ApplicationController


  def show
    @exame_fisico = ExameFisico.find(params[:id])
    @exame_complemento = @exame_fisico.exame_complemento
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exame_fisico }
    end
  end

  

end
