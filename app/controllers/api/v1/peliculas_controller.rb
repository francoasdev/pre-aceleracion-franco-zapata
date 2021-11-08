module Api
  module V1
    class PeliculasController < ApplicationController
      before_action :set_pelicula, only: [:show, :update, :destroy]
      
      has_scope :titulo
      has_scope :genero

      # GET /peliculas
      def index
        if params[:titulo] or params[:genero]
          @peliculas = apply_scopes(Pelicula)
        elsif params["orden"]
          if params["orden"] == "DESC"
            @peliculas = Pelicula.order(created_at: :desc)
          elsif params["orden"] == "ASC"
            @peliculas = Pelicula.order(created_at: :asc)
          end
        else
          @peliculas = Pelicula.all
        end

        render json: @peliculas
      end

      # GET /peliculas/1
      def show
        render json: @pelicula
      end

      # POST /peliculas
      def create
        @pelicula = Pelicula.new(pelicula_params)

        if @pelicula.save
          render json: @pelicula, status: :created
        else
          render json: @pelicula.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /peliculas/1
      def update
        if @pelicula.update(pelicula_params)
          render json: @pelicula
        else
          render json: @pelicula.errors, status: :unprocessable_entity
        end
      end

      # DELETE /peliculas/1
      def destroy
        @pelicula.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_pelicula
          @pelicula = Pelicula.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def pelicula_params
          params.require(:pelicula).permit(:imagen, :titulo, :calificacion, :genero_id)
        end
    end
  end
end