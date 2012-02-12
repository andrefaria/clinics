# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "terapeutas/show" do
  before(:each) do
    @terapeuta = assign(:terapeuta, stub_model(Terapeuta,
      :nome => "Nome",
      :crp => "Crp"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Crp/)
  end
end
