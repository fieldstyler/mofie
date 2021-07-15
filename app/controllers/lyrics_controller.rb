class LyricsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @lyrics = Lyric.where(song: @song).first
  end
end
