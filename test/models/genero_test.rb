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
require "test_helper"

class GeneroTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
