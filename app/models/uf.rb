class Uf < ActiveRecord::Base
  has_many :municipios
  has_many :voluntarios
end
