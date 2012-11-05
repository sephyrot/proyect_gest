require 'spec_helper'

describe "proyectos/index" do
  before(:each) do
    assign(:proyectos, [
      stub_model(Proyecto,
        :nombre => "Nombre",
        :cod => "Cod",
        :id_contrato => 1
      ),
      stub_model(Proyecto,
        :nombre => "Nombre",
        :cod => "Cod",
        :id_contrato => 1
      )
    ])
  end

  it "renders a list of proyectos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Cod".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
