class DadosBiopsia < ActiveRecord::Base
  belongs_to :laudo

  validates :celulas_inflamatorias,         :presence => true    
  validates :vasculite,                     :presence => true    
  validates :fibrose,                       :presence => true    
  validates :bacilos,                       :presence => true    
  validates :perda_fibras,                  :presence => true    
  validates :degeneracao_axonal,            :presence => true    
  validates :regeneracao_axonal,            :presence => true    
  validates :desmielinizacao_ativa,         :presence => true    

end
