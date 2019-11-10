class Song
#<<<<<<< HEAD
    attr_accessor :name, :artist
  
    @@all = []

    def initialize(name)
      @name = name
      @@all << self 
    end
    
    def artist=(artist_obj)
      @artist = artist_obj
      artist_obj.songs.push(self)
    end

    def self.all
        @@all
    end 

    def artist_name
      if @artist == nil
        return nil
      else
        @artist.name
      end
    end
  end
#=======
  attr_accessor :name, :artist

@@all = []

  def initialize(name)
    @name = name
    save
  end

def save
    @@all << self
  end
  
  def self.all
    @@all #displays the all array
  end
  
  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
end
#>>>>>>> 4b030e1912c890789c0942807b06e86e86aaa10f
