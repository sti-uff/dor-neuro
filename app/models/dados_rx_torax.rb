class DadosRxTorax < ActiveRecord::Base
  belongs_to :laudo
  
  def self.table_name
    "dados_rx_torax"
  end
end
