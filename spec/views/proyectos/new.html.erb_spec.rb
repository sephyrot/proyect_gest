require 'spec_helper'

describe "proyectos/new" do
  before(:each) do
    assign(:proyecto, stub_model(Proyecto,
      :cod => "MyString",
      :nombre => "MyString",
      :id_proyecto => 1
    ).as_new_record)
  end

  it "renders new proyecto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => proyectos_path, :method => "post" do
      assert_select "input#proyecto_cod", :name => "proyecto[cod]"
      assert_select "input#proyecto_nombre", :name => "proyecto[nombre]"
      assert_select "input#proyecto_id_proyecto", :name => "proyecto[id_proyecto]"
    end
  end
end
