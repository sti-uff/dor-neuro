class DadosLanss < ActiveRecord::Base
  belongs_to :laudo
  
  def self.table_name
    "dados_lanss"
  end
end
