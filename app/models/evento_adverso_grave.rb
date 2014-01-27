# encoding: utf-8
class EventoAdversoGrave < ActiveRecord::Base
  belongs_to :voluntario
  belongs_to :usuario
  
  attr_accessor :data_formatada

  validates  :obito                , :inclusion => { :in => [true, false]}
  validates  :ameaca_vida          , :inclusion => { :in => [true, false]}
  validates  :invalidez            , :inclusion => { :in => [true, false]}
  validates  :anomalia_congenita   , :inclusion => { :in => [true, false]}
  validates  :hospitalizacao       , :inclusion => { :in => [true, false]}
  validates  :observacoes          , :presence => true
  validates  :data                 , :presence => true

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
