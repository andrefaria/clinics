# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "terapeutas/index" do
  before(:each) do
    assign(:terapeutas, [
      stub_model(Terapeuta,
        :nome => "Nome",
        :crp => "Crp"
      ),
      stub_model(Terapeuta,
        :nome => "Nome",
        :crp => "Crp"
      )
    ])
  end

  it "renders a list of terapeutas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Crp".to_s, :count => 2
  end
end
