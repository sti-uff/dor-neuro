class CreateExameComplementos < ActiveRecord::Migration
  def self.up
    create_table :exame_complementos do |t|
      t.integer :aducao_interosseos_ulnar
      t.integer :abducao_interosseos_ulnar
      t.integer :flexor_carpo_ulnar
      t.integer :opositor_polegar_mediano
      t.integer :abdutor_polegar_mediano
      t.integer :flexor_polegar_mediano
      t.integer :flexor_digital_mediano
      t.integer :pronador_mediano
      t.integer :extensor_polegar_interosseo_posterior
      t.integer :extensor_digital_interosseo_posterior
      t.integer :supinador_radial
      t.integer :triceps_radial
      t.integer :deltoide_axilar
      t.integer :biceps_musculocutaneo
      t.integer :grande_dorsal_toraco_dorsal
      t.integer :extensor_fibular_profundo
      t.integer :longo_fibular_superficial
      t.integer :tibial_fibular_profundo
      t.integer :posterior_tibial
      t.integer :flexor_digital_tibial
      t.integer :gastrocnemio_tibial
      t.integer :biceps_coxa_ciatico
      t.integer :quadriceps_femoral
      t.integer :iliopsoas_interosseo_posterior
      t.integer :adutores_femoral
      t.integer :gluteos_obturador
      t.integer :triceps_gluteo_superior
      t.text :reflexos_profundos
      t.text :reflexos_superficiais
      t.text :esfincteres
      t.text :coordenacao
      t.text :tonus_muscular
      t.boolean :espessamento_nervo
      t.text :nervo_espessado
      t.integer :exame_fisico_id

      t.timestamps
    end
  end

  def self.down
    drop_table :exame_complementos
  end
end
