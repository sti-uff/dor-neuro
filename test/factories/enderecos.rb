# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :endereco do
    logradouro "MyString"
    complemento "MyString"
    bairro "MyString"
    cep "MyString"
    municipio_id 1
    enderecavel_id 1
    enderecavel_type "MyString"
  end
end
