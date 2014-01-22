# encoding: utf-8
class EventosAdversosController < ApplicationController

  def show
    @evento_adverso = EventoAdverso.find params[:id]
  end

  
  def evento_adverso
    @evento_adverso = EventoAdverso.new
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
      format.xml  { render :xml => @evento_adverso }
    end
  end
  
  def salvar_evento_adverso
    @evento_adverso = EventoAdverso.new(params[:evento_adverso])
    
    respond_to do |format|
      if @evento_adverso.save
        format.html { redirect_to(eventos_adversos_menu_path, :notice => 'Evento adverso registrado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => request.fullpath }
        format.xml  { render :xml => @evento_adverso.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def gravidez
    @gravidez = Gravidez.new
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
      format.xml  { render :xml => @gravidez }
    end
  end
  
  def salvar_gravidez
    @gravidez = Gravidez.new(params[:gravidez])
    params[:inclusao][:usuario_id] = params[:gravidez][:usuario_id]
    @inclusao = Inclusao.new(params[:inclusao])
    
    respond_to do |format|
      salvou = false
      Gravidez.transaction do
        if @gravidez.save && @inclusao.save
          salvou = true
        end
      end
      if salvou
        format.html { redirect_to(eventos_adversos_menu_path, :notice => 'Gravidez registrada com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => request.fullpath }
        format.xml  { render :xml => @gravidez.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def superdose
    @superdose = Superdose.new
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
      format.xml  { render :xml => @superdose }
    end
  end
  
  def salvar_superdose
    @superdose = Superdose.new(params[:superdose])
    
    respond_to do |format|
      if @superdose.save
        format.html { redirect_to(eventos_adversos_menu_path, :notice => 'Superdose registrada com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => request.fullpath }
        format.xml  { render :xml => @superdose.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def evento_adverso_grave
    @evento_adverso_grave = EventoAdversoGrave.new
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
      format.xml  { render :xml => @evento_adverso_grave }
    end
  end
  
  def salvar_evento_adverso_grave
    @evento_adverso_grave = EventoAdversoGrave.new(params[:evento_adverso_grave])
    
    respond_to do |format|
      if @evento_adverso_grave.save
        format.html { redirect_to(eventos_adversos_menu_path, :notice => 'Evento adverso grave registrado com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => request.fullpath }
        format.xml  { render :xml => @evento_adverso_grave.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end