require 'rails_helper'

RSpec.describe "Album Show Page" do
  it 'can visit specific album page' do
    album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
    visit "/albums/#{album.id}"
    expect(current_path).to eq("/albums/#{album.id}")
    expect(page).to have_content(album.title)
    expect(page).to have_content(album.genre)
    expect(page).to have_content(album.release_date)
  end
end
