
class Artist

    attr_accessor :name, :songs
  
    @@song_count = 1
    @@all =[]
  
    def initialize(name)
      @name = name
      @@all << self
      @songs = []
    end
    
    def self.all
        @@all
    end 

    def add_song(song)
      @songs << song
      song.artist = self
      @@song_count += 1
    end
  
    def add_song_by_name(name)
      song = Song.new(name)
      @songs << song
      song.artist = self
      @@song_count += 1
    end
  
    def self.song_count
      @@song_count
    end
  
  end