class Api::V1::UserPalettesController < ApplicationController
    before_action :find_user_palette, only: [:show, :destroy]
  
    def index
      @user_palettes = UserPalette.all
      render json: @user_palettes, status: :ok
    end
  
    def create
      @user_palette = UserPalette.create(user_palette_params)
      render json: @user_palette, status: :ok
    end
  
    def show
      render json: @user_palette, status: :ok
    end
  
    def destroy
      @user_palette.destroy
    end
  
    private
  
    def user_palette_params
      params.require(:user_palette).permit(:user_id, :palette_id)
    end
  
    def find_user_palette
      @user_palette = UserPalette.find(params[:id])
    end
  end