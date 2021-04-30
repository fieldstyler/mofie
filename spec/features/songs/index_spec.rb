require 'rails_helper'

RSpec.describe "Song Index Page" do
  it "lists all songs" do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    Song.create(title: "Swing & a Miss", length: 267, album: album)
    Song.create(title: "Yoursnotmine", length: 207, album: album)
    Song.create(title: "Stranger Now", length: 118, album: album)
    Song.create(title: "The Flower Bed", length: 271, album: album)
    Song.create(title: "Black Hole", length: 206, album: album)
    visit '/songs'
    expect(current_path).to eq('/songs')
    album.songs.each do |song|
      expect(page).to have_content(song.title)
      expect(page).to have_content(song.album.title)
    end
  end

  it "takes you to a show page when you click on a song" do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    Song.create(title: "Swing & a Miss", length: 267, album: album)
    Song.create(title: "Yoursnotmine", length: 207, album: album)
    visit '/songs'
    expect(page).to have_content(album.songs.first.title)
    click_on album.songs.first.title
    expect(current_path).to eq("/songs/#{album.songs.first.id}")
  end
end
