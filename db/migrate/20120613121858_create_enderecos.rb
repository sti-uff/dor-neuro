class CreateEnderecos < ActiveRecord::Migration
  def self.up
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.integer :municipio_id
      t.integer :enderecavel_id, :references => nil
      t.string :enderecavel_type

      t.timestamps
    end
  end

  def self.down
    drop_table :enderecos
  end
end
