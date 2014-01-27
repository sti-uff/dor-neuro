# encoding: utf-8
class EventoAdverso < ActiveRecord::Base
  belongs_to :voluntario
  belongs_to :usuario
  
  LEVE = 0
  MODERADO = 1
  SEVERO = 2

  attr_accessor :data_formatada
  
  validates :sinal_desfavoravel,          :presence => true, :if => :sinal_desfavoravel_bool
  validates :sintoma_temporario,          :presence => true, :if => :sintoma_temporario_bool
  validates :procedimento_cirurgico,      :presence => true, :if => :procedimento_cirurgico_bool
  validates :valores_fora_da_referencia,  :presence => true, :if => :valores_fora_da_referencia_bool
  validates :valores_alterados,           :presence => true, :if => :valores_alterados_bool
  validates :achados_fisicos,             :presence => true, :if => :achados_fisicos_bool
  validates :observacoes,                 :presence => true
  validates :data,                        :presence => true

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
