# encoding: utf-8
class ExameFisico < ActiveRecord::Base
  belongs_to :avaliacao_clinica
  has_one :exame_complemento
  
  accepts_nested_attributes_for :exame_complemento
  
  attr_accessor :data_formatada
  
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
end
