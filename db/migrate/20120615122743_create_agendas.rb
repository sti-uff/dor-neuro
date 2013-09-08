class CreateAgendas < ActiveRecord::Migration
  def self.up
    create_table :agendas do |t|
      t.date :data
      t.integer :tipo
      t.integer :voluntario_id

      t.timestamps
    end
  end

  def self.down
    drop_table :agendas
  end
end
