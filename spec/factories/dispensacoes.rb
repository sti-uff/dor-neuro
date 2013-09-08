# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :dispensacao do
    medicamento 1
    posologia "MyText"
    quantidade "MyText"
    data "2012-06-26"
    dispensavel_id 1
    dispensavel_type "MyString"
    usuario_id 1
  end
end
