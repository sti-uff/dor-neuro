# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :centro do
    nome "MyString"
    categoria 1
    telefone "MyString"
    ramal "MyString"
    responsavel "MyString"
    email "MyString"
    endereco_id 1
  end
end
