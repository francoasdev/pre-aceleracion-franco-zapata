class CreatePersonajes < ActiveRecord::Migration[6.1]
  def change
    create_table :personajes do |t|
      t.string :imagen
      t.string :nombre
      t.integer :edad
      t.float :peso
      t.text :historia

      t.timestamps
    end
    add_index :personajes, :nombre
  end
end
