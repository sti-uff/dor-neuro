# encoding: utf-8
class ExameFisico < ActiveRecord::Base
  belongs_to :avaliacao_clinica
  has_one :exame_complemento
  
  accepts_nested_attributes_for :exame_complemento
  
  attr_accessor :data_formatada

  validates :ectoscopia,                :presence => true
  validates :exame_cardiovascular,      :presence => true
  validates :exame_respiratorio,        :presence => true
  validates :exame_abdome,              :presence => true
  validates :exame_marcha,              :presence => true
  validates :estatica,                  :presence => true
  validates :nervos_cranianos,          :presence => true
  validates :sensibilidade_superficial, :presence => true
  validates :data,                      :presence => true
  
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
