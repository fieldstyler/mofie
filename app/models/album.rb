class Album < ApplicationRecord
  validates_presence_of :genre
  validates_presence_of :title
  validates_presence_of :release_date
  validates_presence_of :artist
  has_many :songs
end
