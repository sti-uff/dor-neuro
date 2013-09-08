class CreateAlocacoes < ActiveRecord::Migration
  def self.up
    create_table :alocacoes do |t|
      t.integer :grupo
      t.integer :voluntario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :alocacoes
  end
end
