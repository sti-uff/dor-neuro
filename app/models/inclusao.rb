class Inclusao < ActiveRecord::Base
  belongs_to :voluntario
  belongs_to :usuario

  validates :motivo,    :presence => true
  validates :incluido,  :allow_blank => true, :inclusion => { :in => [true, false]}

end
