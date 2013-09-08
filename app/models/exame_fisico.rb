class ExameFisico < ActiveRecord::Base
  belongs_to :avaliacao_clinica
  has_one :exame_complemento
  
  accepts_nested_attributes_for :exame_complemento
  
  attr_accessor :data_formatada
  
  def data_formatada
    self.data.strftime("%d/%m/%Y") if self.data
  end
  
  def data_formatada=(data)
    self.data = "#{data[3..4]}/#{data[0..1]}/#{data[6..9]}"
  end
end
