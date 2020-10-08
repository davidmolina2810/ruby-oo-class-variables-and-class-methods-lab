require 'pry'

class Song 

  attr_reader :name
  attr_accessor :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count 
    return @@count
  end

  def self.artists 
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) do |genre, hash|
      hash[genre] += 1
    end
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) do |artist, hash|
      hash[artist] += 1
    end
  end

end