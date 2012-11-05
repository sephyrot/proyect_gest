require 'spec_helper'

describe "proyectos/edit" do
  before(:each) do
    @proyecto = assign(:proyecto, stub_model(Proyecto,
      :nombre => "MyString",
      :cod => "MyString",
      :id_contrato => 1
    ))
  end

  it "renders the edit proyecto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => proyectos_path(@proyecto), :method => "post" do
      assert_select "input#proyecto_nombre", :name => "proyecto[nombre]"
      assert_select "input#proyecto_cod", :name => "proyecto[cod]"
      assert_select "input#proyecto_id_contrato", :name => "proyecto[id_contrato]"
    end
  end
end
