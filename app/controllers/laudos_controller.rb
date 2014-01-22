class LaudosController < ApplicationController

  def show
    @laudo = Laudo.find params[:id]
    @dados = @laudo.dados
    @voluntario = @laudo.visita.voluntario
  end

end