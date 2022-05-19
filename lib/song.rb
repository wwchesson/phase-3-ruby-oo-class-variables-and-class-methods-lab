require "pry"

class Song 
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << self.genre
        @@artists << self.artist
    end

    def self.count 
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.map do |g|
            if genre_count[g]
                genre_count[g] += 1
            else
                genre_count[g] = 1
            end        
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.map do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end
end