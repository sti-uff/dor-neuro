class AgendasController < ApplicationController
  # GET /agendas
  # GET /agendas.xml
  def index
    if !params[:tipo].blank?
      @agendas = Agenda.por_tipo params[:tipo]
    end
    if !params[:data].blank?
      if !@agendas.blank?
        @agendas = @agendas.por_data params[:data].to_date
      elsif params[:tipo].blank?
        @agendas = Agenda.por_data params[:data].to_date
      end
    else
      if params[:tipo].blank?
        @agendas = Agenda.all
      end
    end
    # @agendas = Agenda.all
    params[:tipo] ||= Agenda::TIPOS.first[0]
    params[:data] ||= Date.today
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @agendas }
    end
  end

  # GET /agendas/1
  # GET /agendas/1.xml
  def show
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @agenda }
    end
  end

  # GET /agendas/new
  # GET /agendas/new.xml
  def new
    @agenda = Agenda.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @agenda }
    end
  end

  # GET /agendas/1/edit
  def edit
    @agenda = Agenda.find(params[:id])
  end

  # POST /agendas
  # POST /agendas.xml
  def create
    @agenda = Agenda.new(params[:agenda])

    respond_to do |format|
      if @agenda.save
        format.html { redirect_to(agendas_path, :notice => 'Agenda criada com sucesso.') }
        format.xml  { render :xml => @agenda, :status => :created, :location => @agenda }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agenda.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /agendas/1
  # PUT /agendas/1.xml
  def update
    @agenda = Agenda.find(params[:id])

    respond_to do |format|
      if @agenda.update_attributes(params[:agenda])
        format.html { redirect_to(agendas_path, :notice => 'Agenda atualizada com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agenda.errors, :status => :unprocessable_entity }
      end
    end
  end

end
