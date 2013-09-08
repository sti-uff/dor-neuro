class CreateEventoAdversoGraves < ActiveRecord::Migration
  def self.up
    create_table :evento_adverso_graves do |t|
      t.boolean :obito
      t.boolean :ameaca_vida
      t.boolean :invalidez
      t.boolean :anomalia_congenita
      t.boolean :hospitalizacao
      t.text :observacoes
      t.date :data
      t.integer :voluntario_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :evento_adverso_graves
  end
end
