# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
saam = Song.create(title: "Swing & a Miss", length: 267, track_number: "1", album: album)
ynm = Song.create(title: "Yoursnotmine", length: 207, track_number: "2", album: album)
sn = Song.create(title: "Stranger Now", length: 118, track_number: "3", album: album)
tfb = Song.create(title: "The Flower Bed", length: 271, track_number: "4", album: album)
bh = Song.create(title: "Black Hole", length: 206, track_number: "5", album: album)
Lyric.create(full_lyrics: "These are my lyrics\nMy lyrics are awesome\nI love lyrics", song: saam)
