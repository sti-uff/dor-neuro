class CreateProfissoes < ActiveRecord::Migration
  def self.up
    create_table :profissoes do |t|
      t.string :nome, :index => :unique

      t.timestamps
    end
  end

  def self.down
    drop_table :profissoes
  end
end
