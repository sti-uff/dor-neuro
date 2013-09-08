# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agenda do
    data "2012-06-15"
    tipo 1
    voluntario_id 1
  end
end
