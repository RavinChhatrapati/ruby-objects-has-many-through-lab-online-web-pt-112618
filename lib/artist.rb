class Artist
  attr_accessor :name
@@all = []
  def initialize(name)
    @songs = []
    @name = name
    @@all << self
  end
def self.all
@@all
end

  def new_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres                        #=> This is how the other two
    self.songs.collect do |song|    #=> classes talk to each other
      song.genre
    end
  end
end
