class CreateEventoAdversos < ActiveRecord::Migration
  def self.up
    create_table :evento_adversos do |t|
      t.integer :sinal_desfavoravel
      t.boolean :sinal_desfavoravel_bool
      t.integer :sintoma_temporario
      t.boolean :sintoma_temporario_bool
      t.integer :procedimento_cirurgico
      t.boolean :procedimento_cirurgico_bool
      t.integer :valores_fora_da_referencia
      t.boolean :valores_fora_da_referencia_bool
      t.integer :valores_alterados
      t.boolean :valores_alterados_bool
      t.integer :achados_fisicos
      t.boolean :achados_fisicos_bool
      t.text :observacoes
      t.date :data
      t.integer :voluntario_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :evento_adversos
  end
end
