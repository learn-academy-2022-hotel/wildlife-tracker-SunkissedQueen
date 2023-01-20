class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs
  end

  def show
    song = Song.find(params[:id])
    render json: song
  end

  def create
    song = Song.create(song_params)
    if song.valid?
      render json: song
    else
      render json: song.errors
    end
  end

  private
  def song_params
    params.require(:song).permit(:title, :artist)
  end
end
