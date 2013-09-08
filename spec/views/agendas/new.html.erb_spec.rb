require 'spec_helper'

describe "agendas/new" do
  before(:each) do
    assign(:agenda, stub_model(Agenda,
      :tipo => 1,
      :voluntario_id => 1
    ).as_new_record)
  end

  it "renders new agenda form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agendas_path, :method => "post" do
      assert_select "input#agenda_tipo", :name => "agenda[tipo]"
      assert_select "input#agenda_voluntario_id", :name => "agenda[voluntario_id]"
    end
  end
end
