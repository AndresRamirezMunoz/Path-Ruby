#An Album class that store an array of songs
class Album
  include Enumerable

  #An array object of songs
  attr_reader :songs

  #Create a new album instance with an empty songs
  def initialize
    @songs = []
  end

  #add a songs to the album object's
  def add_song(song)
    songs << song
  end

  #yield each in song in the album
  def each
    songs.each do |song|
      yield song
    end
  end
end

thriller = Album.new
thriller.add_song("Thriller")
puts thriller.songs
