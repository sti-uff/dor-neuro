class Adesao < ActiveRecord::Base
  belongs_to :visita
  belongs_to :usuario
  
  attr_accessor :data_formatada
  
  def data_formatada
    if self.data
      self.data.strftime("%d/%m/%Y")
    else
      "NÃO INFORMADA"
    end
  end
  
  def data_formatada=(data)
    self.data = data
  end
end
