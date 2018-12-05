require('pry')
require_relative('models/artist')
require_relative('models/album')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name' => 'Nirvana'})
artist2 = Artist.new({'name' => 'Van Halen'})
artist1.save
artist2.save

album1 = Album.new({ 'title' => 'Nevermind', 'genre' => 'grunge', 'artist_id' => artist1.id})
album2 = Album.new({ 'title' => 'In Utero', 'genre' => 'grunge', 'artist_id' => artist1.id})
album3 = Album.new({ 'title' => 'Bleach', 'genre' => 'grunge', 'artist_id' => artist1.id})
album4 = Album.new({ 'title' => '1984', 'genre' => 'rock', 'artist_id' => artist2.id})
album4 = Album.new({ 'title' => '5150', 'genre' => 'rock', 'artist_id' => artist2.id})
album1.save
album2.save
album3.save
album4.save


# artist1.name = "Nirvs"
# artist1.update
#
# album3.genre = "synth pop"
# album3.update

artist = Artist.all()
albums = Album.all()

# album1.delete
# artist2.delete

catalogue = artist1.albums
nirvana = album1.artist

found_album = Album.find(album2.id)

binding.pry
nil
