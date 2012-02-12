# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "convenios/edit" do
  before(:each) do
    @convenio = assign(:convenio, stub_model(Convenio,
      :nome => "MyString"
    ))
  end

  it "renders the edit convenio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => convenios_path(@convenio), :method => "post" do
      assert_select "input#convenio_nome", :name => "convenio[nome]"
    end
  end
end
