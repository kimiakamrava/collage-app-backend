class Api::V1::PalettesController < ApplicationController
    before_action :find_palette, only: [:show]
  
    def index
      @palettes = Palette.all
      render json: @palettes, status: :ok
    end
  
    def create
      
      @palette = Palette.create(palette_params)
      render json: @palette, status: :ok
    end
  
    def show
      render json: @palette, include::notes, status: :ok
    end
  
    private
  
    def palette_params
      params.require(:palette).permit(:paletteName, :id )
    end
  
    def find_palette
      @palette = Palette.find(params[:id])
    end
  end