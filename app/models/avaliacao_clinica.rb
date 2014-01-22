class AvaliacaoClinica < ActiveRecord::Base
  belongs_to :avaliavel, :polymorphic => true
  belongs_to :usuario
  has_one :exame_fisico
  
  accepts_nested_attributes_for :exame_fisico
  
  attr_accessor :data_sinais_vitais_formatada, :data_anamnese_formatada

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
