class Artist
  attr_accessor :name, :song
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.name=
    @name
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(name)
    artist_name = Song.new(name)
    artist_name
  end

  def self.create_by_name(name = nil)
    artist = self.new_by_name(name)
    artist.save
    artist
  end

  def self.find_by_name(name = nil)
    @@all.detect{|x| x.name == name}
  end

  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil
      create_by_name(name)
    else
      find_by_name(name)
    end
  end

end
