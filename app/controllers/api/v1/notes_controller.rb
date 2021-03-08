class Api::V1::NotesController < ApplicationController
    def create
        @note = Note.create(body:params["note"])
        render json: @note, status: :ok
    end
    def create
      
        @palette = Palette.create(palette_params)
        render json: @palette, status: :ok
    end
    
    def show
        render json: @palette, include: :note, status: :ok
    end
    
      private
    
    def palette_params
        params.require(:palette).permit(:paletteName, :id )
    end
    
    def find_palette
        @palette = Palette.find(params[:id])
    end


end
