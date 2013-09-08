# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :adesao do
    observacoes "MyText"
    data "2012-06-27"
    visita_id 1
    usuario_id 1
  end
end
