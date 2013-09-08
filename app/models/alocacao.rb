class Alocacao < ActiveRecord::Base
  belongs_to :voluntario
  has_one :avaliacao_clinica, :as => :avaliavel
  has_one :dispensacao, :as => :dispensavel
  
  attr_accessor :subgrupo
  
  GRUPO_2 = 0
  GRUPO_1 = 1
  GRUPO_1_1 = 2
  GRUPO_1_2 = 3
  
  GRUPOS = ['2', '1', '1.1', '1.2']
  
  def subgrupo
    self.grupo
  end
  
  def subgrupo=(valor)
    self.grupo = valor if self.grupo != 0
  end
end
