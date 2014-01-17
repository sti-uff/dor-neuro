class ExameFisico < ActiveRecord::Base
  belongs_to :avaliacao_clinica
  has_one :exame_complemento
  
  accepts_nested_attributes_for :exame_complemento
  
  attr_accessor :data_formatada
  
  def data_formatada
    self.data.strftime("%d/%m/%Y") if self.data
  end
  
  def data_formatada=(data)
    self.data = data
  end
end
