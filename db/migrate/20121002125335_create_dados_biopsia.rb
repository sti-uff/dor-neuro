class CreateDadosBiopsia < ActiveRecord::Migration
  def self.up
    create_table :dados_biopsia do |t|
      t.integer :celulas_inflamatorias
      t.integer :vasculite
      t.integer :fibrose
      t.integer :bacilos
      t.integer :perda_fibras
      t.integer :degeneracao_axonal
      t.integer :regeneracao_axonal
      t.integer :desmielinizacao_ativa
      t.integer :laudo_id

      t.timestamps
    end
  end

  def self.down
    drop_table :dados_biopsia
  end
end
