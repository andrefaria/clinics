# -*- encoding : utf-8 -*-
class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :telefone
      t.string :celular
      t.date :data_de_nascimento
      t.string :sexo
      t.string :nome_da_mae
      t.string :nome_do_pai
      t.decimal :valor_parficular
      t.string :email
      t.string :cid
      t.references :convenio

      t.timestamps
    end
  end
end
