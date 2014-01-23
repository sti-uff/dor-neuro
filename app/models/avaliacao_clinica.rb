class AvaliacaoClinica < ActiveRecord::Base
  belongs_to :avaliavel, :polymorphic => true
  belongs_to :usuario
  has_one :exame_fisico
  
  accepts_nested_attributes_for :exame_fisico
  
  attr_accessor :data_sinais_vitais_formatada, :data_anamnese_formatada

  #parte sinais vitais
  validates :pressao_sistolica, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :pressao_diastolica, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :frequencia_cardiaca, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :frequencia_respiratoria, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :temperatura, :presence => true,  :format => { :with => /\d{1,2}\.\d{1}/ }
  validates :peso, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :altura, :presence => true, :format => { :with => /\d{1}\.\d{1,2}/ }
  validates :data_sinais_vitais, :presence => true

  #anamnese
  validates :queixa_principal, :presence => true
  validates :historia_doenca_atual, :presence => true
  validates :historia_medica_pregressa, :presence => true
  validates :historico_familiar, :presence => true
  validates :historia_pessoal_social, :presence => true
  validates :tabagista, :presence => true
  validates :alcoolista, :presence => true
  validates :alergias, :presence => true
  validates :revisao_sistemas, :presence => true
  validates :carga_tabagica, :allow_blank => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :quantidade_alcool, :allow_blank => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :avaliavel_id, :presence => true
  validates :avaliavel_type, :presence => true
  validates :usuario_id, :presence => true
  validates :data_anamnese, :presence => true

  scope :por_voluntario_id, lambda { |voluntario_id|
    {
      :include => {:avaliavel => :voluntario},
      :conditions => ("visitas.voluntario_id = #{voluntario_id}"),
    }
  }
  
  scope :to_visitas, where('avaliavel_type = ?', "Visita")

  scope :por_voluntario_id, lambda { |voluntario_id|
    self.to_visitas.joins("join visitas on visitas.id = avaliacao_clinicas.avaliavel_id").where('visitas.voluntario_id = ?', voluntario_id)
    
  }
  
  def data_sinais_vitais_formatada
    self.data_sinais_vitais.strftime("%d/%m/%Y") if self.data_sinais_vitais
  end
  
  def data_sinais_vitais_formatada=(data)
    self.data_sinais_vitais = data
  end
  
  def data_anamnese_formatada
    self.data_anamnese.strftime("%d/%m/%Y") if self.data_anamnese
  end
  
  def data_anamnese_formatada=(data)
    self.data_anamnese = data
  end
end
