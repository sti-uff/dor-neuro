# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :criterio do
    inclusao_idade false
    inclusao_diagnostico_hanseniase false
    inclusao_duracao_sintomas false
    inclusao_duracao_dor false
    inclusao_assinou_tcle false
    exclusao_gravidez_amamentacao false
    exclusao_deficit_cognitivo false
    exclusao_incapaz_pontuar_dor false
    exclusao_neoplasia_maligna false
    exclusao_imunodeficiente false
    exclusao_disfuncao_renal_hepatica false
    exclusao_medicacoes false
    exclusao_neuropatia_periferica false
    exclusao_idade_fertil_sem_anticoncepcionais false
    data "2012-06-15"
    voluntario_id 1
    usuario_id 1
  end
end
