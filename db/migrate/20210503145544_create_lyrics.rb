class CreateLyrics < ActiveRecord::Migration[5.2]
  def change
    create_table :lyrics do |t|
      t.string :full_lyrics
      t.references :song, foreign_key: true
    end
  end
end
