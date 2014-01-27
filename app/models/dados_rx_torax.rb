class DadosRxTorax < ActiveRecord::Base
  belongs_to :laudo

  validates :descricao  ,:presence => true
  
  def self.table_name
    "dados_rx_torax"
  end
end
