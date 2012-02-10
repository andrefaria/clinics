require 'spec_helper'

describe "pacientes/show" do
  before(:each) do
    @paciente = assign(:paciente, stub_model(Paciente,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bairro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cep/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Celular/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome Da Mae/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome Do Pai/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cid/)
  end
end
