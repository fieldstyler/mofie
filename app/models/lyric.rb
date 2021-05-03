class Lyric < ApplicationRecord
  validates_presence_of :full_lyrics
  belongs_to :song
end
