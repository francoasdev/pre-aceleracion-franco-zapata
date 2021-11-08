# == Schema Information
#
# Table name: personajes
#
#  id         :bigint           not null, primary key
#  edad       :integer
#  historia   :text
#  imagen     :string
#  nombre     :string
#  peso       :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_personajes_on_nombre  (nombre)
#
class PersonajeSerializer < ActiveModel::Serializer
  attributes :imagen, :nombre
  has_many :peliculas
end
