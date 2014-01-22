class RemoveVirgemTratamentoCriterios < ActiveRecord::Migration
  def up
    remove_column :criterios, :inclusao_virgem_tratamento
  end

  def down
    add_column :criterios, :inclusao_virgem_tratamento, :boolean
  end
end
