# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lista_generos = [
  #[imagen, nombre]
  ["url imagen accion", "accion"],
  ["url imagen animacion", "animacion"],
  ["url imagen ficcion", "ficcion"]
]

lista_generos.each do |imagen, nombre|
  Genero.create(imagen: imagen, nombre: nombre)
end

lista_peliculas = [
  #[imagen, titulo, calificacion, genero_id]
  ["url imagen La Momia", "La Momia", 3, 1],
  ["url imagen La Momia Regresa", "La Momia Regresa", 3, 1],
  ["url imagen El Viaje de Chihiro", "El Viaje de Chihiro", 4, 2],
  ["url imagen Matrix", "Matrix", 5, 3]
]

lista_peliculas.each do |imagen, titulo, calificacion, genero_id|
  Pelicula.create(imagen: imagen, titulo: titulo, calificacion: calificacion, genero_id: genero_id)
end

lista_personajes_momia = [
  #[imagen, nombre, edad, peso, historia, pelicula_id]
  ["url imagen Imnhotep", "Imhotep", 3000, 75, "Sumo sacerdote de Osiris"],
  ["url imagen Rick O'Connel", "Rick O'Connel", 37, 88, "Es el protagonista principal"],
  ["url imagen Evelyn Carnahan", "Evelyn Carnahan", 35, 57, "Es una egiptóloga en el Museo de Antigüedades de El Cairo"]
]

lista_personajes_momia.each do |i, n, e, p, h|
  Pelicula.find(1).personajes << Personaje.create(imagen: i, nombre: n, edad: e, peso: p, historia: h )
end

lista_personajes_matrix = [
  #[imagen, nombre, edad, peso, historia, pelicula_id]
  ["url imagen Neo", "Neo", 35, 78, "El Elegido"],
  ["url imagen Morfeo", "Morfeo", 48, 95, "Quien se encarga de despertar a Neo"]
]

lista_personajes_matrix.each do |i, n, e, p, h|
  Pelicula.find(4).personajes << Personaje.create(imagen: i, nombre: n, edad: e, peso: p, historia: h )
end

Pelicula.find(2).personajes << Personaje.find(2)

