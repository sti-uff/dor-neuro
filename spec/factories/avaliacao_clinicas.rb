# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :avaliacao_clinica do
    pressao_sistolica 1
    pressao_diastolica 1
    frequencia_cardiaca 1
    frequencia_respiratoria 1
    temperatura 1.5
    peso 1
    altura 1.5
    queixa_principal "MyText"
    historia_doenca_atual "MyText"
    historia_medica_pregressa "MyText"
    historico_familiar "MyText"
    historia_pessoal_social "MyText"
    tabagista false
    carga_tabagica "MyString"
    alcoolista false
    quantidade_alcool "MyString"
    alergias "MyText"
    revisao_sistemas "MyText"
    avaliavel_id 1
    avaliavel_type "MyString"
    usuario_id 1
  end
end
