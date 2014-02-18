class LaudosController < ApplicationController

  def show
    @laudo = Laudo.find params[:id]
    @dados = @laudo.dados
    @voluntario = @laudo.visita.voluntario
  end

  def download
    @laudo = Laudo.find params[:id]
    send_file @laudo.imagem.path,
    :filename => @laudo.imagem_file_name,
    :type => @laudo.imagem_content_type,
    :x_sendfile => true
  end

end