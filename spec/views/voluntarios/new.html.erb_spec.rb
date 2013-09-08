require 'spec_helper'

describe "voluntarios/new" do
  before(:each) do
    assign(:voluntario, stub_model(Voluntario,
      :nome => "MyString",
      :prontuario => "MyString",
      :sexo => 1,
      :estado_civil => 1,
      :profissao => "MyString",
      :email => "MyString",
      :nacionalidade => 1,
      :telefone => "MyString",
      :celular => "MyString",
      :grupo => 1,
      :centro_id => 1,
      :naturalidade => 1
    ).as_new_record)
  end

  it "renders new voluntario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => voluntarios_path, :method => "post" do
      assert_select "input#voluntario_nome", :name => "voluntario[nome]"
      assert_select "input#voluntario_prontuario", :name => "voluntario[prontuario]"
      assert_select "input#voluntario_sexo", :name => "voluntario[sexo]"
      assert_select "input#voluntario_estado_civil", :name => "voluntario[estado_civil]"
      assert_select "input#voluntario_profissao", :name => "voluntario[profissao]"
      assert_select "input#voluntario_email", :name => "voluntario[email]"
      assert_select "input#voluntario_nacionalidade", :name => "voluntario[nacionalidade]"
      assert_select "input#voluntario_telefone", :name => "voluntario[telefone]"
      assert_select "input#voluntario_celular", :name => "voluntario[celular]"
      assert_select "input#voluntario_grupo", :name => "voluntario[grupo]"
      assert_select "input#voluntario_centro_id", :name => "voluntario[centro_id]"
      assert_select "input#voluntario_naturalidade", :name => "voluntario[naturalidade]"
    end
  end
end
