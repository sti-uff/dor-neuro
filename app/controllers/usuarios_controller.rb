class UsuariosController < ApplicationController
  
  def index
    @usuarios = Usuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usuarios }
    end
  end
  
  def show
    @usuario = Usuario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usuario }
    end
  end
  
  def new
    @usuario = Usuario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usuario }
    end
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def create
    @usuario = Usuario.new(params[:usuario])
    @usuario.password = '123456'

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to(@usuario, :notice => 'Profissional cadastrado com sucesso.') }
        format.xml  { render :xml => @usuario, :status => :created, :location => @usuario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usuario.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @usuario = Usuario.find(params[:id])

    respond_to do |format|
      if @usuario.update_attributes(params[:usuario])
        format.html { redirect_to(@usuario, :notice => 'Profissional atualizado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usuario.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def listar_medicos
    q = params[:q].split(' ').join('%')
    @usuarios = Usuario.where('nome like ?', "%#{q}%").order("nome").
      collect{|u| {:id => "#{u.id}", :name => "#{u.nome}"}}
    if request.xhr?           #isso quer dizer que é uma requisição ajax
      render :json => @usuarios
    else
      render :text => ""
    end
  end
  
end
