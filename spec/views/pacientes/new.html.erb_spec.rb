require 'spec_helper'

describe "pacientes/new" do
  before(:each) do
    assign(:paciente, stub_model(Paciente,
      :nome => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :cep => "MyString",
      :telefone => "MyString",
      :celular => "MyString",
      :sexo => "",
      :nome_da_mae => "MyString",
      :nome_do_pai => "MyString",
      :convenio => "",
      :valor_parficular => "9.99",
      :email => "MyString",
      :cid => "MyString"
    ).as_new_record)
  end

  it "renders new paciente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pacientes_path, :method => "post" do
      assert_select "input#paciente_nome", :name => "paciente[nome]"
      assert_select "input#paciente_endereco", :name => "paciente[endereco]"
      assert_select "input#paciente_bairro", :name => "paciente[bairro]"
      assert_select "input#paciente_cep", :name => "paciente[cep]"
      assert_select "input#paciente_telefone", :name => "paciente[telefone]"
      assert_select "input#paciente_celular", :name => "paciente[celular]"
      assert_select "input#paciente_sexo", :name => "paciente[sexo]"
      assert_select "input#paciente_nome_da_mae", :name => "paciente[nome_da_mae]"
      assert_select "input#paciente_nome_do_pai", :name => "paciente[nome_do_pai]"
      assert_select "input#paciente_convenio", :name => "paciente[convenio]"
      assert_select "input#paciente_valor_parficular", :name => "paciente[valor_parficular]"
      assert_select "input#paciente_email", :name => "paciente[email]"
      assert_select "input#paciente_cid", :name => "paciente[cid]"
    end
  end
end
