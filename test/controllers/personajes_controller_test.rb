require "test_helper"

class PersonajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personaje = personajes(:one)
  end

  test "should get index" do
    get personajes_url, as: :json
    assert_response :success
  end

  test "should create personaje" do
    assert_difference('Personaje.count') do
      post personajes_url, params: { personaje: { edad: @personaje.edad, historia: @personaje.historia, imagen: @personaje.imagen, nombre: @personaje.nombre, peso: @personaje.peso } }, as: :json
    end

    assert_response 201
  end

  test "should show personaje" do
    get personaje_url(@personaje), as: :json
    assert_response :success
  end

  test "should update personaje" do
    patch personaje_url(@personaje), params: { personaje: { edad: @personaje.edad, historia: @personaje.historia, imagen: @personaje.imagen, nombre: @personaje.nombre, peso: @personaje.peso } }, as: :json
    assert_response 200
  end

  test "should destroy personaje" do
    assert_difference('Personaje.count', -1) do
      delete personaje_url(@personaje), as: :json
    end

    assert_response 204
  end
end
