class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :nome
      t.string :matricula
      t.string :senha
      t.boolean :perfil_publico
      t.boolean :homologado
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
