class LaudosController < ApplicationController

  def show
    @laudo = Laudo.find params[:id]
  end

end