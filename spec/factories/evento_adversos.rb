# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evento_adverso do
    sinal_desfavoravel 1
    sinal_desfavoravel_bool false
    sintoma_temporario 1
    sintoma_temporario_bool false
    procedimento_cirurgico 1
    procedimento_cirurgico_bool false
    valores_fora_da_referencia ""
    valores_fora_da_referencia_bool false
    valores_alterados ""
    valores_alterados_bool false
    achados_fisicos ""
    achados_fisicos_bool false
    observacoes "MyText"
    data "2012-06-25"
    voluntario_id 1
    usuario_id 1
  end
end
