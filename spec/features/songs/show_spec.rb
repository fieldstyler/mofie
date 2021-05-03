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
end
