class LaudosController < ApplicationController

  def show
    @laudo = Laudo.find params[:id]
    @dados = @laudo.dados
    @voluntario = @laudo.visita.voluntario
  end

  def download
    @laudo = Laudo.find params[:id]
    send_data @laudo.imagem,
    :filename => @laudo.imagem_file_name,
    :type => @laudo.imagem_content_type
  end

end