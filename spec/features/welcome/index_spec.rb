require 'rails_helper'

RSpec.describe "Welcome Page" do
  it 'has a welcome page' do
    visit root_path
    expect(page).to have_content("mofie")
  end

  it "has clickable link to albums" do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    Song.create(title: "Swing & a Miss", length: 267, album: album)
    Song.create(title: "Yoursnotmine", length: 207, album: album)
    Song.create(title: "Stranger Now", length: 118, album: album)
    Song.create(title: "The Flower Bed", length: 271, album: album)
    Song.create(title: "Black Hole", length: 206, album: album)
    visit root_path
    expect(page).to have_content("Albums")
    click_on "Albums"
    expect(current_path).to eq("/albums")
  end

  it "has clickable link to songs" do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    Song.create(title: "Swing & a Miss", length: 267, album: album)
    Song.create(title: "Yoursnotmine", length: 207, album: album)
    Song.create(title: "Stranger Now", length: 118, album: album)
    Song.create(title: "The Flower Bed", length: 271, album: album)
    Song.create(title: "Black Hole", length: 206, album: album)
    visit root_path
    expect(page).to have_content("Songs")
    click_on "Songs"
    expect(current_path).to eq("/songs")
  end
end
