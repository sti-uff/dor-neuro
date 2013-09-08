# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :voluntario do
    nome "MyString"
    data_nascimento "2012-06-14"
    prontuario "MyString"
    sexo 1
    estado_civil 1
    profissao "MyString"
    email "MyString"
    nacionalidade 1
    telefone "MyString"
    celular "MyString"
    grupo 1
    centro_id 1
    naturalidade 1
  end
end
