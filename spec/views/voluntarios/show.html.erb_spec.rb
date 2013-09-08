require 'spec_helper'

describe "voluntarios/show" do
  before(:each) do
    @voluntario = assign(:voluntario, stub_model(Voluntario,
      :nome => "Nome",
      :prontuario => "Prontuario",
      :sexo => 1,
      :estado_civil => 2,
      :profissao => "Profissao",
      :email => "Email",
      :nacionalidade => 3,
      :telefone => "Telefone",
      :celular => "Celular",
      :grupo => 4,
      :centro_id => 5,
      :naturalidade => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Prontuario/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Profissao/)
    rendered.should match(/Email/)
    rendered.should match(/3/)
    rendered.should match(/Telefone/)
    rendered.should match(/Celular/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
  end
end
