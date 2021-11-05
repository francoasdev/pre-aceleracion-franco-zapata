class CreateJoinTablePeliculasPersonajes < ActiveRecord::Migration[6.1]
  def change
    create_join_table :peliculas, :personajes do |t|
       t.index [:pelicula_id, :personaje_id]
       t.index [:personaje_id, :pelicula_id]
    end
  end
end
