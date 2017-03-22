class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :cedula
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :email

      t.timestamps null: false
    end
  end
end
