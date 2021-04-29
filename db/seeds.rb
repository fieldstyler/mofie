# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

album = Album.create(title: "Black Hole - EP", genre: "awesome", release_date: "2021", artist: "mofie")
Song.create(title: "Swing & a Miss", length: 267, album: album)
Song.create(title: "Yoursnotmine", length: 207, album: album)
Song.create(title: "Stranger Now", length: 118, album: album)
Song.create(title: "The Flower Bed", length: 271, album: album)
Song.create(title: "Black Hole", length: 206, album: album)
