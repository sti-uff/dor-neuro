class DadosDn4 < ActiveRecord::Base
  belongs_to :laudo

  validates :queimadura,            :inclusion => { :in => [true, false]}
  validates :frio_doloroso,         :inclusion => { :in => [true, false]}
  validates :choques_eletricos,     :inclusion => { :in => [true, false]}
  validates :formigueiro,           :inclusion => { :in => [true, false]}
  validates :picadas,               :inclusion => { :in => [true, false]}
  validates :dormencia,             :inclusion => { :in => [true, false]}
  validates :comichao,              :inclusion => { :in => [true, false]}
  validates :hipoestesia_tato,      :inclusion => { :in => [true, false]}
  validates :hipoestesia_picada,    :inclusion => { :in => [true, false]}
  validates :friccao_leve,          :inclusion => { :in => [true, false]}

  def self.table_name
    "dados_dn4"
  end
end
