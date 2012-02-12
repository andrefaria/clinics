# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "terapeutas/new" do
  before(:each) do
    assign(:terapeuta, stub_model(Terapeuta,
      :nome => "MyString",
      :crp => "MyString"
    ).as_new_record)
  end

  it "renders new terapeuta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => terapeutas_path, :method => "post" do
      assert_select "input#terapeuta_nome", :name => "terapeuta[nome]"
      assert_select "input#terapeuta_crp", :name => "terapeuta[crp]"
    end
  end
end
