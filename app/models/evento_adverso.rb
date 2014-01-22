# encoding: utf-8
class EventoAdverso < ActiveRecord::Base
  belongs_to :voluntario
  belongs_to :usuario
  
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
