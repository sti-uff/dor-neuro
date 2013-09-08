class CentrosController < ApplicationController
  # GET /centros
  # GET /centros.xml
  def index
    @centros = Centro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @centros }
    end
  end

  # GET /centros/1
  # GET /centros/1.xml
  def show
    @centro = Centro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @centro }
    end
  end

  # GET /centros/new
  # GET /centros/new.xml
  def new
    @centro = Centro.new
    @centro.build_endereco

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @centro }
    end
  end

  # GET /centros/1/edit
  def edit
    @centro = Centro.find(params[:id])
  end

  # POST /centros
  # POST /centros.xml
  def create
    @centro = Centro.new(params[:centro])

    respond_to do |format|
      if @centro.save
        format.html { redirect_to(@centro, :notice => 'Centro cadastrado com sucesso.') }
        format.xml  { render :xml => @centro, :status => :created, :location => @centro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @centro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /centros/1
  # PUT /centros/1.xml
  def update
    @centro = Centro.find(params[:id])

    respond_to do |format|
      if @centro.update_attributes(params[:centro])
        format.html { redirect_to(@centro, :notice => 'Centro atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @centro.errors, :status => :unprocessable_entity }
      end
    end
  end

end
