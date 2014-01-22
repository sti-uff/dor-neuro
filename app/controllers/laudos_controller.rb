class LaudosController < ApplicationController

  def show
    @laudo = Laudo.find params[:id]
    @dados = @laudo.dados
  end

end