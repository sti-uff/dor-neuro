class Dispensacao < ActiveRecord::Base
  belongs_to :dispensavel, :polymorphic => true
  belongs_to :usuario
  has_many :agendamentos_sms
  
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
