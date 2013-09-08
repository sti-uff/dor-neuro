class DadosDn4 < ActiveRecord::Base
  belongs_to :laudo
  
  def self.table_name
    "dados_dn4"
  end
end
