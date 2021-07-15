require 'rails_helper'

RSpec.describe "Song Show Page" do
  it "gives information about one song" do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    song = Song.create(title: "Swing & a Miss", length: 267, track_number: "1", album: album)
    visit "/songs/#{song.id}"
    expect(current_path).to eq("/songs/#{song.id}")
    expect(page).to have_content(song.title)
    expect(page).to have_content(song.length)
    expect(page).to have_content(song.album.title)
    expect(page).to have_content(song.album.artist)
  end

  it 'has clickable link to take you to songs lyrics page' do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    song = Song.create(title: "Swing & a Miss", length: 267, track_number: "1", album: album)
    lyric = Lyric.create(full_lyrics: "These are my lyrics\nMy lyrics are awesome\nI love lyrics", song: song)
    visit "/songs/#{song.id}"
    expect(page).to have_link("Lyrics")
    click_on "Lyrics"
    expect(current_path).to eq("/songs/#{song.id}/lyrics")
    expect(page).to have_content(lyric.full_lyrics.split("\n").join(" "))
  end
end
