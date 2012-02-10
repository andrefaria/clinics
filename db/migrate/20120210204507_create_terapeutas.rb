class CreateTerapeutas < ActiveRecord::Migration
  def change
    create_table :terapeutas do |t|
      t.string :nome
      t.string :crp

      t.timestamps
    end
  end
end
