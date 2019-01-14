class Genre
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @songs << song
    songs.genre = self
  end
def songs
  @songs
end
  def artists                     #=> This is how the other two
    @songs.collect do |song|  #=> classes talk to each other
      song.artist
    end
  end
end
