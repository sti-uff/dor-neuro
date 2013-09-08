class Laudo < ActiveRecord::Base
  has_attached_file :imagem
  belongs_to :visita
  belongs_to :usuario
  has_one :dados_biopsia
  has_one :dados_lanss
  has_one :dados_dn4
  has_one :dados_sf36
  has_one :dados_rx_torax
  
  attr_accessor :data_formatada
  
  accepts_nested_attributes_for :dados_biopsia
  accepts_nested_attributes_for :dados_lanss
  accepts_nested_attributes_for :dados_dn4
  accepts_nested_attributes_for :dados_sf36
  accepts_nested_attributes_for :dados_rx_torax
  
  TIPO_TCLE = 0
  TIPO_BIOPSIA = 1
  TIPO_ENMG = 2
  TIPO_CHEPS = 3
  TIPO_QST = 4
  TIPO_EVA = 5
  TIPO_DN4 = 6
  TIPO_LANSS = 7
  TIPO_SF36 = 8
  TIPO_MINI_MENTAL = 9
  TIPO_GRAVIDEZ = 10
  TIPO_HEMOGRAMA = 11
  TIPO_FUNC_RENAL = 12
  TIPO_FUNC_HEPATICA = 13
  TIPO_URINOCULTURA = 14
  TIPO_PPD = 15
  TIPO_RX_TORAX = 16
  
  def data_formatada
    self.data.strftime("%d/%m/%Y") if self.data
  end
  
  def data_formatada=(data)
    self.data = "#{data[3..4]}/#{data[0..1]}/#{data[6..9]}"
  end
  
end
