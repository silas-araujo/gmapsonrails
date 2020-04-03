class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :nome
      t.integer :matricula
      t.integer :cpf
      t.integer :bairro
      t.boolean :ativo
      t.boolean :dor_garganta
      t.boolean :tosse
      t.boolean :febre
      t.boolean :dif_respirar
      t.boolean :nenhum_sint

      t.timestamps
    end
  end
end
