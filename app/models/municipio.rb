class Municipio < ActiveRecord::Base
  has_one :endereco, :as => :enderecavel
  belongs_to :uf
end
