class Adesao < ActiveRecord::Base
  belongs_to :visita
  belongs_to :usuario
  
  attr_accessor :data_formatada
  
  def data_formatada
    self.data.strftime("%d/%m/%Y") if self.data
  end
  
  def data_formatada=(data)
    self.data = data
  end
end
