require 'spec_helper'

describe "voluntarios/index" do
  before(:each) do
    assign(:voluntarios, [
      stub_model(Voluntario,
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
      ),
      stub_model(Voluntario,
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
      )
    ])
  end

  it "renders a list of voluntarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Prontuario".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Profissao".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => "Celular".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
