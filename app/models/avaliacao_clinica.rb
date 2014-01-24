class AvaliacaoClinica < ActiveRecord::Base
  belongs_to :avaliavel, :polymorphic => true
  belongs_to :usuario
  has_one :exame_fisico
  
  accepts_nested_attributes_for :exame_fisico
  
  attr_accessor :data_sinais_vitais_formatada, :data_anamnese_formatada

  #parte sinais vitais
  validates :pressao_sistolica,         :presence => true,    :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}, :if => :salva_sinais_vitais?
  validates :pressao_diastolica,        :presence => true,    :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}, :if => :salva_sinais_vitais?
  validates :frequencia_cardiaca,       :presence => true,    :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}, :if => :salva_sinais_vitais?
  validates :frequencia_respiratoria,   :presence => true,    :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}, :if => :salva_sinais_vitais?
  validates :temperatura,               :presence => true,    :format => { :with => /\d{1,2}\.\d{1}/ }                                , :if => :salva_sinais_vitais?
  validates :peso,                      :presence => true,    :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}, :if => :salva_sinais_vitais?
  validates :altura,                    :presence => true,    :format => { :with => /\d{1}\.\d{1,2}/ }                                , :if => :salva_sinais_vitais?
  validates :data_sinais_vitais,        :presence => true                                                                             , :if => :salva_sinais_vitais?

  #anamnese
  validates :queixa_principal,          :presence => true,    :if => :salva_anamnese?
  validates :historia_doenca_atual,     :presence => true,    :if => :salva_anamnese?
  validates :historia_medica_pregressa, :presence => true,    :if => :salva_anamnese?
  validates :historico_familiar,        :presence => true,    :if => :salva_anamnese?
  validates :historia_pessoal_social,   :presence => true,    :if => :salva_anamnese?
  validates :tabagista,                 :inclusion => { :in => [true, false]},    :if => :salva_anamnese?
  validates :alcoolista,                :inclusion => { :in => [true, false]},    :if => :salva_anamnese?
  validates :alergias,                  :presence => true,    :if => :salva_anamnese?
  validates :revisao_sistemas,          :presence => true,    :if => :salva_anamnese?
  validates :avaliavel_id,              :presence => true,    :if => :salva_anamnese?
  validates :avaliavel_type,            :presence => true,    :if => :salva_anamnese?
  validates :data_anamnese,             :presence => true,    :if => :salva_anamnese?


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

  def salva_sinais_vitais
    @sinais_vitais = true
  end

  def salva_sinais_vitais?
    !@sinais_vitais.nil?
  end

  def salva_anamnese
    @anamnese = true
  end

  def salva_anamnese?
    !@anamnese.nil?
  end

end
