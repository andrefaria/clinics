# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "convenios/show" do
  before(:each) do
    @convenio = assign(:convenio, stub_model(Convenio,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
