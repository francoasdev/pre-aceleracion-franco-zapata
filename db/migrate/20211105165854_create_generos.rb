class CreateGeneros < ActiveRecord::Migration[6.1]
  def change
    create_table :generos do |t|
      t.string :nombre
      t.string :imagen

      t.timestamps
    end
    add_index :generos, :nombre
  end
end
