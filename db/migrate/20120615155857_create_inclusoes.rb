class CreateInclusoes < ActiveRecord::Migration
  def self.up
    create_table :inclusoes do |t|
      t.boolean :incluido
      t.string :motivo
      t.integer :voluntario_id
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :inclusoes
  end
end
