# == Schema Information
#
# Table name: generos
#
#  id         :bigint           not null, primary key
#  imagen     :string
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_generos_on_nombre  (nombre)
#
class Genero < ApplicationRecord
    has_many :peliculas

    validates :nombre, presence: true

    validates :imagen, presence: true
end
