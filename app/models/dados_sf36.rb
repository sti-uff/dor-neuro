class DadosSf36 < ActiveRecord::Base
  belongs_to :laudo
  
  def self.table_name
    "dados_sf36"
  end
end
