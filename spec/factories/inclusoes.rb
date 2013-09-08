# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inclusao do
    incluido false
    motivo "MyString"
    voluntario_id 1
    usuario_id 1
  end
end
