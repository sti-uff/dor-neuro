# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exame_fisico do
    ectoscopia "MyText"
    exame_cardiovascular "MyText"
    exame_respiratorio "MyText"
    exame_abdome "MyText"
    exame_marcha "MyText"
    estatica "MyText"
    nervos_cranianos "MyText"
    sensibilidade_superficial "MyText"
    data "2012-06-20"
    avaliacao_clinica_id 1
  end
end
