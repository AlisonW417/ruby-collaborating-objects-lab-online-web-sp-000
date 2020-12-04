class Artist 
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def add_song(new_song)
    self.songs << new_song unless @songs.include?(new_song)
    new_song.artist = self unless new_song.artist == self 
  end 
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end 
  
  def self.find_by_name(name)
    @@all.detect {|artist| artist.name == name}
  end 
  
  def self.create_by_name(name)
    artist = self.new(name)
  end 
  
  def print_songs
    @songs.each {|s| puts s.name}
  end 
  
end 