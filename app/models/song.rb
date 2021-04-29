class Song < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :length
  belongs_to :album
end
