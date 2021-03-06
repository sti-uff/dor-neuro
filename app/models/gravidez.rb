# encoding: utf-8
class Gravidez < ActiveRecord::Base
  belongs_to :voluntario
  belongs_to :usuario

  validates :data, :presence => true

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
