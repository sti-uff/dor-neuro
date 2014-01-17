class Dispensacao < ActiveRecord::Base
  belongs_to :dispensavel, :polymorphic => true
  belongs_to :usuario
  has_many :agendamentos_sms
  
  attr_accessor :data_formatada
  
  def data_formatada
    self.data.strftime("%d/%m/%Y") if self.data
  end
  
  def data_formatada=(data)
    self.data = data
  end
end
