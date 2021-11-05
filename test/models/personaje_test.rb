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
require "test_helper"

class PersonajeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
