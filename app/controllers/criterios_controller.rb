class CriteriosController < ApplicationController

  # GET /criterios/1
  # GET /criterios/1.xml
  def show
    @criterio = Criterio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @criterio }
    end
  end

  

end
