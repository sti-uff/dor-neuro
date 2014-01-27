class Voluntario < ActiveRecord::Base
  belongs_to :centro
  belongs_to :uf, :foreign_key => :naturalidade
  has_one :endereco, :as => :enderecavel
  has_one :alocacao
  has_many :agendas
  has_many :criterios
  has_many :inclusoes
  has_many :visitas
  has_many :evento_adversos
  has_many :gravidezes
  has_many :superdoses
  has_many :evento_adverso_graves, :class_name => 'EventoAdversoGrave'
  
  accepts_nested_attributes_for :endereco
  accepts_nested_attributes_for :criterios
  accepts_nested_attributes_for :inclusoes
  
  #attr_accessor :data_nascimento

  validates :nome,            :presence => true
  validates :data_nascimento, :presence => true
  validates :profissao,       :presence => true
  validates :sexo,            :presence => true
  validates :telefone,        :presence => true
  validates :estado_civil,    :presence => true
  validates :nacionalidade,   :presence => true
  validates :naturalidade,    :presence => true
  validates :centro,          :presence => true
  validates :prontuario,      :presence => true
  validates :data_entrevista, :presence => true, :if => :atualiza_dados_demograficos?
  
  SEXO_MASC = 0
  SEXO_FEM = 1
  
  ESTADO_CIVIL_CASADO = 0
  ESTADO_CIVIL_SOLTEIRO = 1
  ESTADO_CIVIL_DIVORCIADO = 2
  
  NACIONALIDADE_BRASIL = 0
  NACIONALIDADE_OUTRO = 1

  def sexo_str
    case self.sexo
    when SEXO_MASC
      "Masculino"
    when SEXO_FEM
      "Feminino"
    end
  end
  
  def estado_civil_str
    case self.estado_civil
    when ESTADO_CIVIL_CASADO
      "Casado"
    when ESTADO_CIVIL_SOLTEIRO
      "Solteiro"
    when ESTADO_CIVIL_DIVORCIADO
      "Divorciado"
    end
  end
  
  def nacionalidade_str
    case self.nacionalidade
    when NACIONALIDADE_BRASIL
      "Brasil"
    when NACIONALIDADE_OUTRO
      "Outro"
    end
  end

  def atualiza_dados_demograficos
    @dados_demograficos = true
  end

  def atualiza_dados_demograficos?
    !@dados_demograficos.nil?
  end

  #para fim de estatistica, o array possui as qnts de voluntarios de 10 em 10. 0-10, 11-20... por diante
  def self.quantidade_por_idade
    hoje = Date.today
    array_sql_range = []
    array_range = ["0-10","11-20","21-30","31-40","41-50","51-60","61-70","71-80","81-90","91-100"]
    for i in 0..10 do
      a = i*10
      b = a + 10
      array_sql_range[i] = "BETWEEN '#{(hoje - b.year).strftime("%Y-%m-%d")}' AND '#{(hoje - a.year).strftime("%Y-%m-%d")}'"
    end
    query = ""
    array_range.each_with_index do |range, index|
      query += "(SELECT COUNT(*) as qtd_voluntario, '#{range}' as ranged FROM voluntarios WHERE data_nascimento #{array_sql_range[index]})"
      if index != 9
        query += " UNION "
      end

    end

    retornos = Voluntario.connection.execute(query)
    array_resposta = []
    retornos.each_with_index do |retorno, index|
      array_resposta[index] = retorno[0]
    end
    array_resposta
  end


  #retorna um array com as quantidades de cada tipo de visitas na ordem: pré-selecao, execução e encerramento
  def self.quantidade_por_status
    query = "(
                SELECT COUNT(*) as qtd_visita, 'pre-selecao' as tipo FROM voluntarios INNER JOIN visitas ON  voluntarios.id = visitas.voluntario_id WHERE visitas.numero = 1 AND voluntarios.id NOT IN (
                            SELECT voluntarios.id FROM voluntarios INNER JOIN visitas ON  voluntarios.id = visitas.voluntario_id WHERE visitas.numero IN (2,8)) ) UNION
                (
                SELECT COUNT(*) as qtd_visita, 'execucao' as tipo FROM voluntarios INNER JOIN visitas ON  voluntarios.id = visitas.voluntario_id WHERE visitas.numero IN (2,7) AND voluntarios.id NOT IN (
                            SELECT voluntarios.id FROM voluntarios INNER JOIN visitas ON  voluntarios.id = visitas.voluntario_id WHERE visitas.numero != 8 ) ) UNION
                (
                 SELECT COUNT(*) as qtd_visita, 'encerramento' as tipo FROM voluntarios INNER JOIN visitas ON  voluntarios.id = visitas.voluntario_id WHERE visitas.numero = 8 )
    "
    retornos = Voluntario.connection.execute(query)
    array_resposta = []
    retornos.each_with_index do |retorno, index|
      array_resposta[index] = retorno[0]
    end
    array_resposta
  end
  
end





#volun joins visitas where tipo la = 8
#volun joins visitas where tipo la = 1 e = 2-7 AND NOT = 8
#volun joins visitas where tipo la = 1 and NOT 2-7 and not 8
#
#volun joins visitas where tipo la = 1 and id not in (volun joins visitas where tipo la=1 and tipo - 2-8 and id not in (select volun joins visitas where tipo la = 8))