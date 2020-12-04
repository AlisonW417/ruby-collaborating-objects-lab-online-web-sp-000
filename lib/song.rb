class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self) unless artist.songs.include?(self)
  end 
  
  def self.new_by_filename(filename)
    
    
  
  
end 