class CreateCoordinators < ActiveRecord::Migration[5.1]
  def change
    create_table :coordinators do |t|
      t.string :nome
      t.string :matricula
      t.string :senha
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
