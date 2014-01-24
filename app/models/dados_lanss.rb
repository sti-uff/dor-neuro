class DadosLanss < ActiveRecord::Base
  belongs_to :laudo

   validates :dor_desagradavel,       :inclusion => { :in => [true, false]}
   validates :pele_manchada,          :inclusion => { :in => [true, false]}
   validates :pele_sensivel,          :inclusion => { :in => [true, false]}
   validates :dor_repentina,          :inclusion => { :in => [true, false]}
   validates :pele_queimacao,         :inclusion => { :in => [true, false]}
   validates :alodinia,               :inclusion => { :in => [true, false]}
   validates :alteracao_limiar,       :inclusion => { :in => [true, false]}
  
  def self.table_name
    "dados_lanss"
  end
end
