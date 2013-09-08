# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gravidez do
    data "2012-06-25"
    voluntario_id 1
    usuario_id 1
  end
end
