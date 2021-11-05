class CreatePeliculas < ActiveRecord::Migration[6.1]
  def change
    create_table :peliculas do |t|
      t.string :imagen
      t.string :titulo
      t.integer :calificacion
      t.references :genero, null: false, foreign_key: true

      t.timestamps
    end
    add_index :peliculas, :titulo
  end
end
