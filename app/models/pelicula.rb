# == Schema Information
#
# Table name: peliculas
#
#  id           :bigint           not null, primary key
#  calificacion :integer
#  imagen       :string
#  titulo       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  genero_id    :bigint           not null
#
# Indexes
#
#  index_peliculas_on_genero_id  (genero_id)
#  index_peliculas_on_titulo     (titulo)
#
# Foreign Keys
#
#  fk_rails_...  (genero_id => generos.id)
#
class Pelicula < ApplicationRecord
  belongs_to :genero
  has_and_belongs_to_many :personajes

  validates :calificacion, presence: true, numericality: {only_integer: true, greater_than_or_equal_than: 1, less_than_or_equal_to: 5}

  validates :imagen, presence: true

  validates :titulo, presence: true
end
