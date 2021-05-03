class Song < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :length
  validates_presence_of :track_number
  belongs_to :album
end
