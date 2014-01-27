class EstatisticasController < ApplicationController
  
  def index
    @ptc_masculino = Voluntario.where(:sexo => Voluntario::SEXO_MASC).count
    @ptc_feminino =  Voluntario.where(:sexo => Voluntario::SEXO_FEM).count
    @centro_neu = Centro.first
    @centro_fio = Centro.all[1]
    @centro_usp = Centro.last
    @idades = Voluntario.quantidade_por_idade
    @qtd_status = Voluntario.quantidade_por_status
  end

end
