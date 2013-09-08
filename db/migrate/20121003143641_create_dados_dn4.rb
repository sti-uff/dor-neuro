class CreateDadosDn4 < ActiveRecord::Migration
  def self.up
    create_table :dados_dn4 do |t|
      t.boolean :queimadura
      t.boolean :frio_doloroso
      t.boolean :choques_eletricos
      t.boolean :formigueiro
      t.boolean :picadas
      t.boolean :dormencia
      t.boolean :comichao
      t.boolean :hipoestesia_tato
      t.boolean :hipoestesia_picada
      t.boolean :friccao_leve
      t.integer :laudo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dados_dn4
  end
end
