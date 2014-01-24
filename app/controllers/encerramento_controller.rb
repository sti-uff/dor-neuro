# encoding: utf-8
class EncerramentoController < ApplicationController
  
  def new_laudo
    if !session[:voluntario].blank?
      @visita = Visita.find_or_create_by_voluntario_id_and_numero(session[:voluntario], 8)
    end
    @laudo = @visita ? @visita.laudos.build : Laudo.new
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
      format.xml  { render :xml => @laudo }
    end
  end
  
  def create_laudo
    @laudo = Laudo.new params[:laudo]
    respond_to do |format|
      if Voluntario.find(session[:voluntario]).visitas.find_by_numero(8).laudos.find_all_by_tipo(params[:laudo][:tipo]).size > 0
        flash.now[:error] = 'O laudo deste voluntário já foi registrado.'
        format.html { render request.fullpath }
        format.xml  { render :xml => @laudo.errors, :status => :unprocessable_entity }
      else
        if @laudo.save
          format.html { redirect_to(encerramento_path, :notice => 'Laudo registrado com sucesso.') }
          format.xml  { render :xml => @laudo, :status => :created }
        else
          format.html { render request.fullpath }
          format.xml  { render :xml => @laudo.errors, :status => :unprocessable_entity }
        end
      end
    end
  end
  
  def new_avaliacao_clinica
    if !session[:voluntario].blank?
      visita = Visita.find_or_create_by_voluntario_id_and_numero(session[:voluntario], 8)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def dados_demograficos
    @voluntario = Voluntario.find session[:voluntario]
    respond_to do |format|
      format.html { render request.fullpath }
      format.xml  { render :xml => @voluntario }
    end
  end
  
  def salvar_dados_demograficos
    @voluntario = Voluntario.find session[:voluntario]
    
    respond_to do |format|
      if @voluntario.update_attributes(params[:voluntario])
        format.html { redirect_to(encerramento_new_avaliacao_clinica_path, :notice => 'Dados demográficos atualizados com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "dados_demograficos" }
        format.xml  { render :xml => @voluntario.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def avaliacao_clinica
    @voluntario = Voluntario.find session[:voluntario]
    visita = Visita.find_by_voluntario_id_and_numero(session[:voluntario], 8)
    @avaliacao_clinica = AvaliacaoClinica.find_by_avaliavel_id_and_avaliavel_type(visita.id, 'Visita')
    unless @avaliacao_clinica
      @avaliacao_clinica = AvaliacaoClinica.
        create(:avaliavel_id => visita.id, :avaliavel_type => 'Visita', :usuario_id => session[:usuario])
      @avaliacao_clinica.build_exame_fisico
      @avaliacao_clinica.exame_fisico.build_exame_complemento
      @avaliacao_clinica.save
    end
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def salvar_avaliacao_clinica
    @avaliacao_clinica = AvaliacaoClinica.find_by_avaliavel_id_and_avaliavel_type(
        Visita.find_by_voluntario_id_and_numero(session[:voluntario], 8).id, 'Visita')
    
    retorno = encerramento_new_avaliacao_clinica_path
    if request.fullpath.include? 'sinais_vitais'
      notice = 'Sinais vitais salvos com sucesso.'
    elsif request.fullpath.include? 'anamnese'
      notice = 'Anamnese salva com sucesso.'
    else
      notice = 'Exame físico salvo com sucesso.'
      if request.fullpath.include? 'fisico/'
        retorno = encerramento_exame_fisico_path
      end
    end
    respond_to do |format|
      if @avaliacao_clinica.update_attributes(params[:avaliacao_clinica])
        format.html { redirect_to(retorno, :notice => notice) }
        format.xml  { head :ok }
      else
        format.html { render request.fullpath }
        format.xml  { render :xml => @avaliacao_clinica.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def exames
    render "dorneuro/encerramento/exames"
  end
  
end