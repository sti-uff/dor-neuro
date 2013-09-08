class CreateDadosSf36 < ActiveRecord::Migration
  def self.up
    create_table :dados_sf36 do |t|
      t.integer :laudo_id
      t.float :saude
      t.integer :comparacao_saude
      t.integer :atividades_vigorosas
      t.integer :atividades_moderadas
      t.integer :atividades_carregar_mantimentos
      t.integer :atividades_varios_lances_escada
      t.integer :atividades_um_lance_escada
      t.integer :atividades_ajoelhar
      t.integer :atividades_andar_mais_de_1_km
      t.integer :atividades_varios_quarteiroes
      t.integer :atividades_um_quarteirao
      t.integer :atividades_banho
      t.integer :fisico_menos_tempo_trabalho
      t.integer :fisico_menos_tarefas
      t.integer :fisico_limitado
      t.integer :fisico_dificuldade
      t.integer :emocional_menos_tempo_trabalho
      t.integer :emocional_menos_tarefas
      t.integer :emocional_nao_realizou_tarefas
      t.integer :social_atividade
      t.float :dor
      t.float :interferencia_dor
      t.integer :sentimento_vigor
      t.integer :sentimento_nervoso
      t.integer :sentimento_deprimido
      t.integer :sentimento_calmo
      t.integer :sentimento_energico
      t.integer :sentimento_abatido
      t.integer :sentimento_esgotado
      t.integer :sentimento_feliz
      t.integer :sentimento_cansado
      t.integer :social_visita
      t.integer :adoece_facilmente
      t.integer :saudavel
      t.integer :saude_vai_piorar
      t.integer :saude_excelente

      t.timestamps
    end
  end

  def self.down
    drop_table :dados_sf36s
  end
end
