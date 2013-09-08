class CreateExameFisicos < ActiveRecord::Migration
  def self.up
    create_table :exame_fisicos do |t|
      t.text :ectoscopia
      t.text :exame_cardiovascular
      t.text :exame_respiratorio
      t.text :exame_abdome
      t.text :exame_marcha
      t.text :estatica
      t.text :nervos_cranianos
      t.text :sensibilidade_superficial
      t.date :data
      t.integer :avaliacao_clinica_id

      t.timestamps
    end
  end

  def self.down
    drop_table :exame_fisicos
  end
end
