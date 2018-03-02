class Artist
  attr_accessor :name, :songs, :artist
  @@song_count = []
  
  def initialize(name)
     @name = name
     @songs = []
  end
  
  def add_song(song)
     @songs << song
     @@song_count << song
     song.artist = self
  end
  
  def add_song_by_name(song_name)
     @songs << Song.new(song_name)
  end
  
  def self.song_count
     @@song_count.length   
  end
end