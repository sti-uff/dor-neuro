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
  
  attr_accessor :data_nascimento_formatada, :data_entrevista_formatada
  
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
  
  def data_nascimento_formatada
    self.data_nascimento.strftime("%d/%m/%Y") if self.data_nascimento
  end
  
  def data_nascimento_formatada=(data)
    self.data_nascimento = "#{data[3..4]}/#{data[0..1]}/#{data[6..9]}"
  end
  
  def data_entrevista_formatada
    self.data_entrevista.strftime("%d/%m/%Y") if self.data_entrevista
  end
  
  def data_entrevista_formatada=(data)
    self.data_entrevista = "#{data[3..4]}/#{data[0..1]}/#{data[6..9]}"
  end
end
