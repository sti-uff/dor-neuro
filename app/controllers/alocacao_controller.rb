# encoding: utf-8
class AlocacaoController < ApplicationController
  
  def analisar_prontuarios
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end

  def show_avaliacao_clinica
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @avaliacao = visita.avaliacao_clinica
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_criterios
    voluntario = Voluntario.find session[:voluntario]
    @criterio = voluntario.criterios.second
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_biopsia
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @biopsia = visita.laudos.find_by_tipo(Laudo::TIPO_BIOPSIA)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_enmg
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @enmg = visita.laudos.find_by_tipo(Laudo::TIPO_ENMG)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_cheps
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @cheps = visita.laudos.find_by_tipo(Laudo::TIPO_CHEPS)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_qst
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @qst = visita.laudos.find_by_tipo(Laudo::TIPO_QST)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_eva
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @eva = visita.laudos.find_by_tipo(Laudo::TIPO_EVA)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_dn4
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @dn4 = visita.laudos.find_by_tipo(Laudo::TIPO_DN4)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_lanss
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @lanss = visita.laudos.find_by_tipo(Laudo::TIPO_LANSS)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_sf36
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @sf36 = visita.laudos.find_by_tipo(Laudo::TIPO_SF36)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_mini_mental
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @mini_mental = visita.laudos.find_by_tipo(Laudo::TIPO_MINI_MENTAL)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_gravidez
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @gravidez = visita.laudos.find_by_tipo(Laudo::TIPO_GRAVIDEZ)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_hemograma
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @hemograma = visita.laudos.find_by_tipo(Laudo::TIPO_HEMOGRAMA)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_func_renal
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @renal = visita.laudos.find_by_tipo(Laudo::TIPO_FUNC_RENAL)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_func_hepatica
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @hepatica = visita.laudos.find_by_tipo(Laudo::TIPO_FUNC_HEPATICA)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_urinocultura
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @urinocultura = visita.laudos.find_by_tipo(Laudo::TIPO_URINOCULTURA)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def show_ppd
    voluntario = Voluntario.find session[:voluntario]
    visita = voluntario.visitas.find_by_numero(1)
    if visita
      @ppd = visita.laudos.find_by_tipo(Laudo::TIPO_PPD)
    end
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def incluir
    @inclusao = Inclusao.new
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def salvar_incluir
    @inclusao = Inclusao.new params[:inclusao]
    if params[:inclusao][:incluido] == 'true'
      notice = 'Voluntário incluído com sucesso.'
    else
      notice = 'Voluntário excluído com sucesso.'
    end
    respond_to do |format|
      if @inclusao.save
        format.html { redirect_to(alocacao_path, :notice => notice) }
        format.xml  { head :ok }
      else
        format.html { render :action => "incluir" }
        format.xml  { render :xml => @inclusao.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def criterios
    if !session[:voluntario].blank?
      @voluntario = Voluntario.find session[:voluntario]
      @voluntario.criterios.build params[:criterio]
      @voluntario.inclusoes.build params[:inclusao]
    end
    params[:pagina] = request.fullpath

    respond_to do |format|
      format.html { render request.fullpath }
      format.xml  { render :xml => @voluntario }
    end
  end
  
  def salvar_criterios
    @voluntario = Voluntario.find session[:voluntario]
    @voluntario.criterios.build params[:voluntario][:criterios]
    @voluntario.inclusoes.build params[:voluntario][:inclusoes]

    respond_to do |format|
      if @voluntario.criterios.size > 3
        flash.now[:error] = 'Os critérios I/E deste voluntário já foram aplicados'
        format.html { render request.fullpath }
        format.xml  { render :xml => @voluntario.errors, :status => :unprocessable_entity }
      else
        salvou = false
        Criterio.transaction do
          if @voluntario.save
            salvou = true
          end
        end
        if salvou
          format.html { redirect_to(alocacao_path, :notice => 'Critérios I/E aplicados com sucesso') }
          format.xml  { render :xml => @voluntario, :status => :created }
        else
          format.html { render request.fullpath }
          format.xml  { render :xml => @voluntario.errors, :status => :unprocessable_entity }
        end
      end
    end
  end
  
  def new_avaliacao_clinica
    if !session[:voluntario].blank?
      alocacao = Alocacao.find_or_create_by_voluntario_id(session[:voluntario])
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
        format.html { redirect_to(alocacao_new_avaliacao_clinica_path, :notice => 'Dados demográficos atualizados com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "dados_demograficos" }
        format.xml  { render :xml => @voluntario.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def avaliacao_clinica
    @voluntario = Voluntario.find session[:voluntario]
    @avaliacao_clinica = @voluntario.alocacao.avaliacao_clinica
    unless @avaliacao_clinica
      @avaliacao_clinica = AvaliacaoClinica.
        create(:avaliavel_id => @voluntario.alocacao.id, :avaliavel_type => 'Alocacao', :usuario_id => session[:usuario])
      @avaliacao_clinica.build_exame_fisico
      @avaliacao_clinica.exame_fisico.build_exame_complemento
      @avaliacao_clinica.save
    end
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def salvar_avaliacao_clinica
    @voluntario = Voluntario.find session[:voluntario]
    @avaliacao_clinica = @voluntario.alocacao.avaliacao_clinica
    
    retorno = alocacao_new_avaliacao_clinica_path
    if request.fullpath.include? 'sinais_vitais'
      notice = 'Sinais vitais salvos com sucesso.'
    elsif request.fullpath.include? 'anamnese'
      notice = 'Anamnese salva com sucesso.'
    else
      notice = 'Exame físico salvo com sucesso.'
      if request.fullpath.include? 'fisico/'
        retorno = alocacao_exame_fisico_path
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
  
  def grupos
    params[:pagina] = request.fullpath
    if session[:voluntario]
      @voluntario = Voluntario.find session[:voluntario]
      @alocacao = @voluntario.alocacao
      unless @alocacao
        @alocacao = Alocacao.create(:voluntario_id => @voluntario.id)
      end
    end
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def salvar_grupos
    @voluntario = Voluntario.find session[:voluntario]
    @alocacao = @voluntario.alocacao
    
    respond_to do |format|
      if @alocacao.update_attributes(params[:alocacao])
        format.html { redirect_to(randomizar_path, :notice => 'Voluntário alocado ao grupo com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render request.fullpath }
        format.xml  { render :xml => @alocacao.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def dispensacao
    unless session[:voluntario].blank?
      @voluntario = Voluntario.find session[:voluntario]
      @alocacao = @voluntario.alocacao
      unless @alocacao
        @alocacao = Alocacao.create(:voluntario_id => @voluntario.id)
        @dispensacao = Dispensacao.create(:dispensavel_id => @alocacao.id, :dispensavel_type => 'Alocacao')
      else
        @dispensacao = @alocacao.dispensacao
        unless @dispensacao
          @dispensacao = Dispensacao.create(:dispensavel_id => @alocacao.id, :dispensavel_type => 'Alocacao')
        end
      end
    else
      @dispensacao = Dispensacao.new
    end
    
    params[:pagina] = request.fullpath
    respond_to do |format|
      format.html { render request.fullpath }
    end
  end
  
  def salvar_dispensacao
    @voluntario = Voluntario.find session[:voluntario]
    @dispensacao = @voluntario.alocacao.dispensacao
    
    respond_to do |format|
      if @dispensacao.update_attributes(params[:dispensacao])
        format.html { redirect_to(alocacao_path, :notice => 'Dispensação de medicamentos registrada com sucesso.') }
        format.xml  { head :ok }
      else
        format.html { render request.fullpath }
        format.xml  { render :xml => @dispensacao.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end