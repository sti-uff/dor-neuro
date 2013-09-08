class CreateCriterios < ActiveRecord::Migration
  def self.up
    create_table :criterios do |t|
      t.boolean :inclusao_idade
      t.boolean :inclusao_diagnostico_hanseniase
      t.boolean :inclusao_duracao_sintomas
      t.boolean :inclusao_duracao_dor
      t.boolean :inclusao_virgem_tratamento
      t.boolean :inclusao_assinou_tcle
      t.boolean :exclusao_gravidez_amamentacao
      t.boolean :exclusao_deficit_cognitivo
      t.boolean :exclusao_incapaz_pontuar_dor
      t.boolean :exclusao_neoplasia_maligna
      t.boolean :exclusao_imunodeficiente
      t.boolean :exclusao_disfuncao_renal_hepatica
      t.boolean :exclusao_medicacoes
      t.boolean :exclusao_neuropatia_periferica
      t.boolean :exclusao_idade_fertil_sem_anticoncepcionais
      t.date :data
      t.integer :voluntario_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :criterios
  end
end
