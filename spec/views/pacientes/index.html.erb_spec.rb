# -*- encoding : utf-8 -*-
require 'spec_helper'

describe "pacientes/index" do
  before(:each) do
    assign(:pacientes, [
      stub_model(Paciente,
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cep => "Cep",
        :telefone => "Telefone",
        :celular => "Celular",
        :sexo => "",
        :nome_da_mae => "Nome Da Mae",
        :nome_do_pai => "Nome Do Pai",
        :convenio => "",
        :valor_parficular => "9.99",
        :email => "Email",
        :cid => "Cid"
      ),
      stub_model(Paciente,
        :nome => "Nome",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :cep => "Cep",
        :telefone => "Telefone",
        :celular => "Celular",
        :sexo => "",
        :nome_da_mae => "Nome Da Mae",
        :nome_do_pai => "Nome Do Pai",
        :convenio => "",
        :valor_parficular => "9.99",
        :email => "Email",
        :cid => "Cid"
      )
    ])
  end

  it "renders a list of pacientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cep".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Celular".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome Da Mae".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome Do Pai".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cid".to_s, :count => 2
  end
end
