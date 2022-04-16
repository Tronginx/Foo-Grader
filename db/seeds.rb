# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

songs = [
    'Willow',
    'Champagne Problems',
    'Gold Rush',
    "'Tis the Damn Season",
    'Tolerate It',
    'No Body, No Crime',
    'Happiness',
    'Dorothea',
    'Coney Island',
    'Ivy',
    'Cowboy like Me',
    'Long Story Short',
    'Marjorie',
    'Closure',
    'Evermore',
    'Right Where You Left Me',
    "It's Time to Go"
  ]

  songs.each do |song|
    Song.create! name: song, loves: 0, likes: 0
end