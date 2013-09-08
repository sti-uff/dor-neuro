class CreateDadosRxTorax < ActiveRecord::Migration
  def self.up
    create_table :dados_rx_torax do |t|
      t.integer :laudo_id
      t.text :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :dados_rx_torax
  end
end
