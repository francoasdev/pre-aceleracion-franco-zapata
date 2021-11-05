class PersonajesController < ApplicationController
  before_action :set_personaje, only: [:show, :update, :destroy]

  # GET /personajes
  def index
    @personajes = Personaje.all

    render json: @personajes
  end

  # GET /personajes/1
  def show
    render json: @personaje
  end

  # POST /personajes
  def create
    @personaje = Personaje.new(personaje_params)

    if @personaje.save
      render json: @personaje, status: :created, location: @personaje
    else
      render json: @personaje.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /personajes/1
  def update
    if @personaje.update(personaje_params)
      render json: @personaje
    else
      render json: @personaje.errors, status: :unprocessable_entity
    end
  end

  # DELETE /personajes/1
  def destroy
    @personaje.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personaje
      @personaje = Personaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personaje_params
      params.require(:personaje).permit(:imagen, :nombre, :edad, :peso, :historia)
    end
end
