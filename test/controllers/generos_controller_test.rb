require "test_helper"

class GenerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genero = generos(:one)
  end

  test "should get index" do
    get generos_url, as: :json
    assert_response :success
  end

  test "should create genero" do
    assert_difference('Genero.count') do
      post generos, params: { genero: { imagen: @genero.imagen, nombre: @genero.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show genero" do
    get genero(@genero), as: :json
    assert_response :success
  end

  test "should update genero" do
    patch genero(@genero), params: { genero: { imagen: @genero.imagen, nombre: @genero.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy genero" do
    assert_difference('Genero.count', -1) do
      delete genero(@genero), as: :json
    end

    assert_response 204
  end
end
