class Api::V1::MusicsController < ApplicationController
  def index
    @musics = Music.all
    render json: @musics
  end

  def update
  end

  def create
    music = Music.create(music_params)
  end

  private

  def music_params
   params.require(:music).permit(:name, :zip_code, :address, :title, :price)
  end
end
