class Visita < ActiveRecord::Base
  belongs_to :voluntario
  has_many :laudos
  has_one :avaliacao_clinica, :as => :avaliavel
  has_one :dispensacao, :as => :dispensavel
  has_one :adesao
  
  accepts_nested_attributes_for :laudos
  accepts_nested_attributes_for :avaliacao_clinica

end

