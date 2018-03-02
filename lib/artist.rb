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
     new_song = Song.new(song_name)
     @songs << new_song
     @@song_count << Song.new(new_song)
  end
  
  def self.song_count
     @@song_count.length   
  end
end