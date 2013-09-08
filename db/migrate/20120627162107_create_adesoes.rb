class CreateAdesoes < ActiveRecord::Migration
  def self.up
    create_table :adesoes do |t|
      t.text :observacoes
      t.date :data
      t.integer :visita_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :adesoes
  end
end
