# encoding: utf-8
class VoluntariosController < ApplicationController
  # GET /voluntarios
  # GET /voluntarios.xml
  def index
    if params[:centro].blank?
      @voluntarios = Voluntario.all
    else
      @voluntarios = Voluntario.find_all_by_centro_id params[:centro]
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @voluntarios }
    end
  end

  # GET /voluntarios/1
  # GET /voluntarios/1.xml
  def show
    @voluntario = Voluntario.find(params[:id])
    @agendas = @voluntario.agendas
    @criterios = @voluntario.criterios
    @laudos = Laudo.por_voluntario_id(@voluntario.id)
    @eventos_adversos = @voluntario.evento_adversos

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @voluntario }
    end
  end

  # GET /voluntarios/new
  # GET /voluntarios/new.xml
  def new
    @voluntario = Voluntario.new
    @voluntario.build_endereco
    @voluntario.criterios.build
    @voluntario.inclusoes.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @voluntario }
    end
  end

  # GET /voluntarios/1/edit
  def edit
    @voluntario = Voluntario.find(params[:id])
  end

  # POST /voluntarios
  # POST /voluntarios.xml
  def create
    params[:voluntario].delete :inclusoes
    @voluntario = Voluntario.new(params[:voluntario])

    respond_to do |format|
      if @voluntario.save
        format.html { redirect_to(@voluntario, :notice => 'Voluntário criado com sucesso.') }
        format.xml  { render :xml => @voluntario, :status => :created, :location => @voluntario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @voluntario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /voluntarios/1
  # PUT /voluntarios/1.xml
  def update
    @voluntario = Voluntario.find(params[:id])
    params[:voluntario].delete :inclusoes

    respond_to do |format|
      if @voluntario.update_attributes(params[:voluntario])
        format.html { redirect_to(@voluntario, :notice => 'Voluntário atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @voluntario.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def listar_voluntarios
    q = params[:q].split(' ').join('%')
    @voluntarios = Voluntario.where('nome like ?', "%#{q}%").order("nome").
      collect{|v| {:id => "#{v.id}", :name => "#{v.id} - #{v.nome}"}}
    if request.xhr?           #isso quer dizer que é uma requisição ajax
      render :json => @voluntarios
    else
      render :text => ""
    end
  end


#  def get_imagem_laudo
#    send_file "#{AgendamentoVisita::PATH_FOTOS}/#{params[:id]}_sacra.jpeg", :type => 'image/jpeg', :disposition => 'inline'
#  end


end
