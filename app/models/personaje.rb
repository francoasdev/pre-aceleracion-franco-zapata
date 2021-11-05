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
class Personaje < ApplicationRecord
    has_and_belongs_to_many :peliculas

    validates :edad, presence: true, numericality: {only_integer:true, greater_than: 0}
    validates :historia, presence: true
    validates :imagen, presence: true
    validates :nombre, presence: true
    validates :peso, presence: true, numericality: {greater_than: 0}
end
