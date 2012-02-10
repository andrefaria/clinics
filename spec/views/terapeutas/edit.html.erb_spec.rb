require 'spec_helper'

describe "terapeutas/edit" do
  before(:each) do
    @terapeuta = assign(:terapeuta, stub_model(Terapeuta,
      :nome => "MyString",
      :crp => "MyString"
    ))
  end

  it "renders the edit terapeuta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => terapeutas_path(@terapeuta), :method => "post" do
      assert_select "input#terapeuta_nome", :name => "terapeuta[nome]"
      assert_select "input#terapeuta_crp", :name => "terapeuta[crp]"
    end
  end
end
