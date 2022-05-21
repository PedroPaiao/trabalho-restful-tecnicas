class CreateAlunos < ActiveRecord::Migration[7.0]
  def change
    create_table :alunos do |t|
      t.string :rga, null: false
      t.integer :situacao, default: 0
      t.string :curso
      t.string :nome, null: false
      t.datetime :registrado_em

      t.timestamps
    end
  end
end
