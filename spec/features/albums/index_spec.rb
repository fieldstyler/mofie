require 'rails_helper'

RSpec.describe "Album Index Page" do
  it 'lists all albums' do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    visit '/albums'
    expect(page).to have_content(album.title)
    expect(page).to have_content(album.release_date)
  end

  it 'takes you to show page when you click on an album' do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    Song.create(title: "Swing & a Miss", length: 267, album: album)
    Song.create(title: "Yoursnotmine", length: 207, album: album)
    visit '/albums'
    expect(page).to have_content(album.title)
    click_on album.title
    expect(current_path).to eq("/albums/#{album.id}")
    expect(page).to have_content(album.title)
    expect(page).to have_content(album.genre)
    expect(page).to have_content(album.release_date)
  end
end
