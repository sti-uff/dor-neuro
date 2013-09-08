class CreateCentros < ActiveRecord::Migration
  def self.up
    create_table :centros do |t|
      t.string :nome
      t.integer :categoria
      t.string :telefone
      t.string :ramal
      t.string :responsavel
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :centros
  end
end
