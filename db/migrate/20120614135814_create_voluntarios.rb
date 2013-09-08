class CreateVoluntarios < ActiveRecord::Migration
  def self.up
    create_table :voluntarios do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :prontuario
      t.integer :sexo
      t.integer :estado_civil
      t.string :profissao
      t.string :email
      t.integer :nacionalidade
      t.string :telefone
      t.string :celular
      t.integer :centro_id
      t.integer :naturalidade, :references => :ufs
      t.date :data_entrevista

      t.timestamps
    end
  end

  def self.down
    drop_table :voluntarios
  end
end
