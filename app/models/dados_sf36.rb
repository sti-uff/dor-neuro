class DadosSf36 < ActiveRecord::Base
  belongs_to :laudo

  validates :saude,                             :presence => true
  validates :comparacao_saude,                  :presence => true
  validates :atividades_vigorosas,              :presence => true
  validates :atividades_moderadas,              :presence => true
  validates :atividades_carregar_mantimentos,   :presence => true
  validates :atividades_varios_lances_escada,   :presence => true
  validates :atividades_um_lance_escada,        :presence => true
  validates :atividades_ajoelhar,               :presence => true
  validates :atividades_andar_mais_de_1_km,     :presence => true
  validates :atividades_varios_quarteiroes,     :presence => true
  validates :atividades_um_quarteirao,          :presence => true
  validates :atividades_banho,                  :presence => true
  validates :fisico_menos_tempo_trabalho,       :presence => true
  validates :fisico_menos_tarefas,              :presence => true
  validates :fisico_limitado,                   :presence => true
  validates :fisico_dificuldade,                :presence => true
  validates :emocional_menos_tempo_trabalho,    :presence => true
  validates :emocional_menos_tarefas,           :presence => true
  validates :emocional_nao_realizou_tarefas,    :presence => true
  validates :social_atividade,                  :presence => true
  validates :dor,                               :presence => true
  validates :interferencia_dor,                 :presence => true
  validates :sentimento_vigor,                  :presence => true
  validates :sentimento_nervoso,                :presence => true
  validates :sentimento_deprimido,              :presence => true
  validates :sentimento_calmo,                  :presence => true
  validates :sentimento_energico,               :presence => true
  validates :sentimento_abatido,                :presence => true
  validates :sentimento_esgotado,               :presence => true
  validates :sentimento_feliz,                  :presence => true
  validates :sentimento_cansado,                :presence => true
  validates :social_visita,                     :presence => true
  validates :adoece_facilmente,                 :presence => true
  validates :saudavel,                          :presence => true
  validates :saude_vai_piorar,                  :presence => true
  validates :saude_excelente,                   :presence => true

  def self.table_name
    "dados_sf36"
  end
end
