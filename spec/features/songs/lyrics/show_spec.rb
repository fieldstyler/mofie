require 'rails_helper'

RSpec.describe "Song Lyrics Show Page" do
  it 'displays lyrics for a given song' do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    song = Song.create(title: "Swing & a Miss", length: 267, track_number: "1", album: album)
    lyric = Lyric.create(full_lyrics: "These are my lyrics\nMy lyrics are awesome\nI love lyrics", song: song)
    visit "/songs/#{song.id}/lyrics"
    expect(current_path).to eq("/songs/#{song.id}/lyrics")
    expect(page).to have_content(song.title)
    expect(page).to have_content(lyric.full_lyrics.split("\n").join(" "))
  end
end
