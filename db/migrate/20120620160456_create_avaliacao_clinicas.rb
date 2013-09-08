class CreateAvaliacaoClinicas < ActiveRecord::Migration
  def self.up
    create_table :avaliacao_clinicas do |t|
      t.integer :pressao_sistolica
      t.integer :pressao_diastolica
      t.integer :frequencia_cardiaca
      t.integer :frequencia_respiratoria
      t.float :temperatura
      t.integer :peso
      t.float :altura
      t.text :queixa_principal
      t.text :historia_doenca_atual
      t.text :historia_medica_pregressa
      t.text :historico_familiar
      t.text :historia_pessoal_social
      t.boolean :tabagista
      t.string :carga_tabagica
      t.boolean :alcoolista
      t.string :quantidade_alcool
      t.text :alergias
      t.text :revisao_sistemas
      t.integer :avaliavel_id, :references => nil
      t.string :avaliavel_type
      t.integer :usuario_id
      t.date :data_sinais_vitais
      t.date :data_anamnese

      t.timestamps
    end
  end

  def self.down
    drop_table :avaliacao_clinicas
  end
end
