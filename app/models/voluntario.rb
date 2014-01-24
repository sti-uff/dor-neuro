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
#  def self.array_idades
#    hoje = Date.today
#    array_range = []
#    for i in 0..10 do
#      a = i*10
#      b = a + 10
#      array_range[i] = "BETEWEEN '#{hoje - b.year}' AND '#{hoje - a.year}'"
#    end
#    qnt_idades = []
#    array_range.each_with_index  do |range, index|
#      qnt_idades[index] = Voluntario.where("data_nascimento BETEWEEN '24-01-2004' AND '24-01-2014'")
#    end
#
#  end
  
end
