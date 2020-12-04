class MP3Importer
  attr_accessor :path
  
  @@all = []
  
  def initialize(path)
    @path = path  
    @@all << self 
  end 
  
  def files 
    @@all 
  end 

  
end 