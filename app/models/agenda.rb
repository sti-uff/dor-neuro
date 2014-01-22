# encoding: utf-8
class Agenda < ActiveRecord::Base
  belongs_to :voluntario
  
  scope :por_tipo, lambda { |tipo| where('tipo = ?', tipo) }
  scope :por_data, lambda { |data| where('data = ?', data) }
  
  attr_accessor :data_formatada

  validates :data, :presence => true
  validates :voluntario, :presence => true
  
  TIPOS = {0 => "Visita de seleção", 1 => "Visita de execução", 2 => "Visita de encerramento",
    3 => "Consulta de randomização", 4 => "Biópsia", 5 => "CHEPS", 6 => "ENMG", 7 => "QST"}
    
  def token_voluntario
    if self.voluntario
      Array(self.voluntario).collect { |v| { :id => v.id, :name => "#{v.id} - #{v.nome}" } }.to_json
    else
      nil
    end
  end
  
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
