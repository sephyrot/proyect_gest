require 'spec_helper'

describe "proyectos/show" do
  before(:each) do
    @proyecto = assign(:proyecto, stub_model(Proyecto,
      :cod => "Cod",
      :nombre => "Nombre",
      :id_proyecto => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cod/)
    rendered.should match(/Nombre/)
    rendered.should match(/1/)
  end
end
