class CreateDadosLanss < ActiveRecord::Migration
  def self.up
    create_table :dados_lanss do |t|
      t.boolean :dor_desagradavel
      t.boolean :pele_manchada
      t.boolean :pele_sensivel
      t.boolean :dor_repentina
      t.boolean :pele_queimacao
      t.boolean :alodinia
      t.boolean :alteracao_limiar
      t.integer :laudo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dados_lanss
  end
end
