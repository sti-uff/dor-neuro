class CreateVisitas < ActiveRecord::Migration
  def self.up
    create_table :visitas do |t|
      t.integer :voluntario_id
      t.integer :numero

      t.timestamps
    end
  end

  def self.down
    drop_table :visitas
  end
end
