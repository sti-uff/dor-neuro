# encoding: utf-8
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

  validates :data   , :presence => true
  validates :imagem , :attachment_presence => true  , :if => :exige_arquivo_anexo?
  validates :escore , :presence => true, :numericality => {:greater_than_or_equal_to => 0}, :if => :exige_escore?

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

  LEVE = 1
  MODERADA = 2
  INTENSA = 3

  TIPOS_ARQUIVO_OBRIGATORIO = [
    TIPO_TCLE,
    TIPO_BIOPSIA,
    TIPO_ENMG,
    TIPO_CHEPS,
    TIPO_QST,
    TIPO_MINI_MENTAL
  ]

  TIPOS_ESCORE_OBRIGATORIO = [
    TIPO_EVA,
    TIPO_DN4,
    TIPO_SF36,
    TIPO_LANSS
  ]

  scope :por_voluntario_id, lambda { |voluntario_id|
    {
        :include => {:visita => :voluntario},
        :conditions => ("visitas.voluntario_id = #{voluntario_id}"),
    }
  }

  def data_formatada
    if self.data
      self.data.strftime("%d/%m/%Y")
    else
      nil
    end
  end

  def data_formatada=(data)
    self.data = data
  end

  def exige_arquivo_anexo?
    TIPOS_ARQUIVO_OBRIGATORIO.include? self.tipo
  end

  def exige_escore?
      TIPOS_ESCORE_OBRIGATORIO.include? self.tipo
  end

  def tipo_to_s
    case(self.tipo)
    when TIPO_TCLE
      "TCLE"
    when TIPO_BIOPSIA
      "Biopsia"
    when TIPO_ENMG
      "ENMG"
    when TIPO_CHEPS
      "CHEPS"
    when TIPO_QST
      "QST"
    when TIPO_EVA
      "EVA"
    when TIPO_DN4
      "DN4"
    when TIPO_LANSS
      "LANSS"
    when TIPO_SF36
      "SF36"
    when TIPO_MINI_MENTAL
      "Mini Mental"
    when TIPO_GRAVIDEZ
      "Gravidez"
    when TIPO_HEMOGRAMA
      "Hemograma"
    when TIPO_FUNC_RENAL
      "Função Renal"
    when TIPO_FUNC_HEPATICA
      "Função Hepática"
    when TIPO_URINOCULTURA
      "Urinocultura"
    when TIPO_PPD
      "PPD"
    when TIPO_RX_TORAX
      "Raio-X Torax"
    end
  end

  def dados
    case tipo
      when TIPO_BIOPSIA
        return dados_biopsia
      when TIPO_DN4
        return dados_dn4
      when TIPO_LANSS
        return dados_lanss
      when TIPO_SF36
        return dados_sf36
      when TIPO_RX_TORAX
        return dados_rx_torax
      else
        nil
    end
  end
end
