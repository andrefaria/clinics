require 'spec_helper'

describe "convenios/index" do
  before(:each) do
    assign(:convenios, [
      stub_model(Convenio,
        :nome => "Nome"
      ),
      stub_model(Convenio,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of convenios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
