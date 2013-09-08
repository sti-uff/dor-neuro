class CreateAgendamentosSms < ActiveRecord::Migration
  def self.up
    create_table :agendamentos_sms do |t|
      t.datetime :data_hora
      t.integer :status, :default => 0
      t.string :texto
      t.integer :dispensacao_id

      t.timestamps
    end
  end

  def self.down
    drop_table :agendamentos_sms
  end
end
