class AvaliacaoClinica < ActiveRecord::Base
  belongs_to :avaliavel, :polymorphic => true
  belongs_to :usuario
  has_one :exame_fisico
  
  accepts_nested_attributes_for :exame_fisico
  
  attr_accessor :data_sinais_vitais_formatada, :data_anamnese_formatada
  
  def data_sinais_vitais_formatada
    self.data_sinais_vitais.strftime("%d/%m/%Y") if self.data_sinais_vitais
  end
  
  def data_sinais_vitais_formatada=(data)
    self.data_sinais_vitais = "#{data[3..4]}/#{data[0..1]}/#{data[6..9]}"
  end
  
  def data_anamnese_formatada
    self.data_anamnese.strftime("%d/%m/%Y") if self.data_anamnese
  end
  
  def data_anamnese_formatada=(data)
    self.data_anamnese = "#{data[3..4]}/#{data[0..1]}/#{data[6..9]}"
  end
end
