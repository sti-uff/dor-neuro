class Centro < ActiveRecord::Base
  has_one :endereco, :as => :enderecavel
  has_many :usuarios
  has_many :voluntarios
  
  accepts_nested_attributes_for :endereco
  
  CATEGORIA_COORDENADOR = 0
  CATEGORIA_PARTICIPANTE = 1
  
  CATEGORIAS = ["Centro coordenador", "Centro participante"]
end
