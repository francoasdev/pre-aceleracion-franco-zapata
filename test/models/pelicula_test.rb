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
require "test_helper"

class PeliculaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
