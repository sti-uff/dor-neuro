require 'spec_helper'

describe "agendas/edit" do
  before(:each) do
    @agenda = assign(:agenda, stub_model(Agenda,
      :tipo => 1,
      :voluntario_id => 1
    ))
  end

  it "renders the edit agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agendas_path(@agenda), :method => "post" do
      assert_select "input#agenda_tipo", :name => "agenda[tipo]"
      assert_select "input#agenda_voluntario_id", :name => "agenda[voluntario_id]"
    end
  end
end
