class CreateDispensacoes < ActiveRecord::Migration
  def self.up
    create_table :dispensacoes do |t|
      t.integer :medicamento
      t.text :posologia
      t.text :quantidade
      t.date :data
      t.integer :dispensavel_id, :references => nil
      t.string :dispensavel_type
      t.integer :usuario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dispensacoes
  end
end
