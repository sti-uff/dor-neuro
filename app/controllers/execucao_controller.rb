# encoding: utf-8
class ExecucaoController < ApplicationController
  
  def new_avaliacao_clinica
    params[:pagina] = request.fullpath
    respond_to do |format|
      if session[:numero] && (session[:numero].to_i < 2 || session[:numero].to_i > 7)
        flash.now[:error] = 'As visitas de execução devem ter números entre 2 e 7'
        format.html { render request.fullpath }
      else
        format.html { render request.fullpath }
      end
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
        format.html { redirect_to(execucao_new_avaliacao_clinica_path, :notice => 'Dados demográficos atualizados com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "dados_demograficos" }
        format.xml  { render :xml => @voluntario.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def avaliacao_clinica
    @voluntario = Voluntario.find session[:voluntario]
    @visita = @voluntario.visitas.find_or_create_by_numero(session[:numero])
    @avaliacao_clinica = @visita.avaliacao_clinica
    unless @avaliacao_clinica
      @avaliacao_clinica = AvaliacaoClinica.
        create(:avaliavel_id => @visita.id, :avaliavel_type => 'Visita', :usuario_id => session[:usuario])
      @avaliacao_clinica.build_exame_fisico
      @avaliacao_clinica.exame_fisico.build_exame_complemento
      @avaliacao_clinica.save(:validate => false)
    end
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def salvar_avaliacao_clinica
    @voluntario = Voluntario.find session[:voluntario]
    @avaliacao_clinica = @voluntario.visitas.find_by_numero(session[:numero]).avaliacao_clinica
    
    retorno = execucao_new_avaliacao_clinica_path
    if request.fullpath.include? 'sinais_vitais'
      notice = 'Sinais vitais salvos com sucesso.'
      @avaliacao_clinica.salva_sinais_vitais
    elsif request.fullpath.include? 'anamnese'
      notice = 'Anamnese salva com sucesso.'
      @avaliacao_clinica.salva_anamnese
    else
      notice = 'Exame físico salvo com sucesso.'
      if request.fullpath.include? 'fisico/'
        retorno = execucao_exame_fisico_path
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
  
  def new_laudo
    if !session[:voluntario].blank? && (session[:numero] && (session[:numero].to_i > 1 && session[:numero].to_i < 8))
      @visita = Visita.find_or_create_by_voluntario_id_and_numero(session[:voluntario], session[:numero])
    end
    @laudo = @visita ? @visita.laudos.build : Laudo.new
    params[:pagina] = request.fullpath
    respond_to do |format|
      if session[:numero] && (session[:numero].to_i < 2 || session[:numero].to_i > 7)
        flash.now[:error] = 'As visitas de execução devem ter números entre 2 e 7'
        format.html { render request.fullpath }
      else
        format.html { render request.fullpath }
        format.xml  { render :xml => @laudo }
      end
    end
  end
  
  def create_laudo
    @laudo = Laudo.new params[:laudo]
    respond_to do |format|
      if Voluntario.find(session[:voluntario]).visitas.find_by_numero(session[:numero]).laudos.
          find_all_by_tipo(params[:laudo][:tipo]).size > 0
        flash.now[:error] = 'O laudo deste voluntário para esta visita já foi registrado.'
        format.html { render request.fullpath }
        format.xml  { render :xml => @laudo.errors, :status => :unprocessable_entity }
      else
        if @laudo.save
          format.html { redirect_to(execucao_path, :notice => 'Laudo registrado com sucesso.') }
          format.xml  { render :xml => @laudo, :status => :created }
        else
          format.html { render request.fullpath }
          format.xml  { render :xml => @laudo.errors, :status => :unprocessable_entity }
        end
      end
    end
  end
  
  def adesao
    if !session[:voluntario].blank? && !session[:numero].blank?
      @voluntario = Voluntario.find session[:voluntario]
      @visita = @voluntario.visitas.find_by_numero(session[:numero])
      if @visita
        @adesao = @visita.adesao
      end
      unless @adesao
        @adesao = Adesao.new
      end
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      if session[:numero] && (session[:numero].to_i < 2 || session[:numero].to_i > 7)
        flash.now[:error] = 'As visitas de execução devem ter números entre 2 e 7'
        format.html { render request.fullpath }
      else
        format.html { render request.fullpath }
        format.xml  { render :xml => @adesao }
      end
    end
  end
  
  def salvar_adesao
    @voluntario = Voluntario.find session[:voluntario]
    visita = @voluntario.visitas.find_or_create_by_numero(session[:numero])
    @adesao = visita.adesao
    unless @adesao
      @adesao = Adesao.create(:visita_id => visita.id)
    end
    respond_to do |format|
      if @adesao.update_attributes(params[:adesao])
        format.html { redirect_to(execucao_path, :notice => 'Adesão registrada com sucesso.') }
        format.xml  { render :xml => @adesao, :status => :created }
      else
        format.html { render request.fullpath }
        format.xml  { render :xml => @adesao.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def dispensacao
    if !session[:voluntario].blank? && !session[:numero].blank?
      @voluntario = Voluntario.find session[:voluntario]
      @visita = @voluntario.visitas.find_by_numero(session[:numero])
      if @visita
        @dispensacao = @visita.dispensacao
      end
      unless @dispensacao
        @dispensacao = Dispensacao.new
      end
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      if session[:numero] && (session[:numero].to_i < 2 || session[:numero].to_i > 7)
        flash.now[:error] = 'As visitas de execução devem ter números entre 2 e 7'
        format.html { render request.fullpath }
      else
        format.html { render request.fullpath }
      end
    end
  end
  
  def salvar_dispensacao
    @voluntario = Voluntario.find session[:voluntario]
    visita = @voluntario.visitas.find_or_create_by_numero(session[:numero])
    @dispensacao = visita.dispensacao
    unless @dispensacao
      @dispensacao = Dispensacao.create(:dispensavel_id => visita.id, :dispensavel_type => 'Visita')
    end
    respond_to do |format|
      if @dispensacao.update_attributes(params[:dispensacao])
        format.html { redirect_to(execucao_path, :notice => 'Dispensação de medicamentos registrada com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render request.fullpath }
        format.xml  { render :xml => @dispensacao.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end