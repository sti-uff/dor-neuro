# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :evento_adverso_grafe, :class => 'EventoAdversoGrave' do
    obito false
    ameaca_vida false
    invalidez false
    anomalia_congenita false
    hospitalizacao false
    observacoes "MyText"
    data "2012-06-25"
    voluntario_id 1
    usuario_id 1
  end
end
