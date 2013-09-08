# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exame_complemento do
    aducao_interosseos_ulnar 1
    abducao_interosseos_ulnar 1
    flexor_carpo_ulnar 1
    opositor_polegar_mediano 1
    abdutor_polegar_mediano 1
    flexor_polegar_mediano 1
    flexor_digital_mediano 1
    pronador_mediano 1
    extensor_polegar_interosseo_posterior 1
    extensor_digital_interosseo_posterior 1
    supinador_radial 1
    triceps_radial 1
    deltoide_axilar 1
    biceps_musculocutaneo 1
    grande_dorsal_toraco_dorsal 1
    extensor_fibular_profundo 1
    longo_fibular_superficial 1
    tibial_fibular_profundo 1
    posterior_tibial 1
    flexor_digital_tibial 1
    gastrocnemio_tibial 1
    biceps_coxa_ciatico 1
    quadriceps_femoral 1
    iliopsoasinterosseo_posterior 1
    adutores_femoral 1
    gluteos_obturador 1
    triceps_gluteo_superior 1
    reflexos_profundos "MyText"
    reflexos_superficiais "MyText"
    esfincteres "MyText"
    coordenacao "MyText"
    tonus_muscular "MyText"
    espessamento_nervo false
    nervo_espessado "MyText"
    exame_fisico_id 1
  end
end
