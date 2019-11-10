class Post
#<<<<<<< HEAD

    attr_accessor :title, :author
    #attr_reader :author

    @@all = []

    def initialize(title)
      @title = title
      @@all << self
    end

    #def author=(author)
      #@author = author
    #end 

    def self.all
        @@all
    end 

    def author_name
      if @author == nil
        return nil
      else
        @author.name
      end
    end
  end
#=======
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
   save
  end

  def save
    @@all << self
  end

def self.all
    @@all #displays the all array
  end

  def author_name
    if(self.author)
      self.author.name
    end
  end
end
>>>>>>> 4b030e1912c890789c0942807b06e86e86aaa10f
