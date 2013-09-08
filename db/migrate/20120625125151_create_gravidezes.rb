class CreateGravidezes < ActiveRecord::Migration
  def self.up
    create_table :gravidezes do |t|
      t.date :data
      t.integer :voluntario_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :gravidezes
  end
end
