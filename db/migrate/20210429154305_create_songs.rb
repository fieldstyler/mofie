class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :length
      t.references :album, foreign_key: true
    end
  end
end
