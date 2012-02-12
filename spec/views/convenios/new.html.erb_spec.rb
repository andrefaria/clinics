# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "convenios/new" do
  before(:each) do
    assign(:convenio, stub_model(Convenio,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new convenio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => convenios_path, :method => "post" do
      assert_select "input#convenio_nome", :name => "convenio[nome]"
    end
  end
end
