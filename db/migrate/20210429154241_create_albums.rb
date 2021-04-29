class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :genre
      t.string :release_date
      t.string :artist
    end
  end
end
