class Song
    attr_accessor :name, :artist, :genre

    @@artists = []
    @@genres = []
    @@count = 0
    @@artist_count = {}
    @@genre_count = {}

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @@artists << @artist
        @genre = genre  
        @@genres << @genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        i = 0 
        while i < @@genres.length do
            if @@genre_count.has_key?(@@genres[i]) == false
                @@genre_count[@@genres[i]] = 1
                
            else 
                @@genre_count[@@genres[i]] += 1
                
            end
            i += 1
        end
        @@genre_count
    end

    def self.artist_count
        i = 0 
        while i < @@artists.length do
            if @@artist_count.has_key?(@@artists[i]) == false
                @@artist_count[@@artists[i]] = 1
                
            else 
                @@artist_count[@@artists[i]] += 1
                
            end
            i += 1
        end
        @@artist_count
    end

end