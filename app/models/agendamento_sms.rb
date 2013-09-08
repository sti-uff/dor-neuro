class AgendamentoSms < ActiveRecord::Base
  
  belongs_to :dispensacao

  PENDENTE = 0
  ENVIANDO = 1
  ENVIADO = 2
  CANCELADO = 3
  FALHA = 4

  self.skip_time_zone_conversion_for_attributes = [:data_hora]

  scope :pendentes, lambda { where(:status => PENDENTE) }
  scope :enviados, lambda { where(:status => ENVIADO) }
  scope :cancelados, lambda { where(:status => CANCELADO) }
  scope :nao_cancelados, lambda { where('status != ?', CANCELADO) }
  scope :enviando, lambda { where(:status => ENVIANDO) }
  scope :falhos, lambda { where(:status => FALHA) }
  
  # scope :voluntario_ativo, lambda { where('inclusoes.ativo' => true) }
  # scope :por_paciente_id, lambda { |id| where("prescricoes.paciente_id = ?", id) }
  scope :por_dispensacao_id, lambda { |id| where("dispensacao_id in (?)", id) }
  
  # scope :com_item_prescricao_e_medicamento_e_prescricao_e_usuario_e_pessoa, includes({:item_prescricao => [:medicamento, [:prescricao => {:usuario => :pessoa}]]})
  
  scope :ordenado_por_data_hora_asc, :order => "data_hora asc"
  scope :ordenado_por_data_hora_desc, :order => "data_hora desc"
  
end
