class CreateLaudos < ActiveRecord::Migration
  def self.up
    create_table :laudos do |t|
      t.has_attached_file :imagem
      t.date :data
      t.integer :escore
      t.boolean :bool
      t.integer :tipo
      t.integer :visita_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :laudos
  end
end
