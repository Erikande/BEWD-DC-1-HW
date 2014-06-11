#add require methods
# require 'lib/uri.rb'
require 'json'
require 'rest_client'
require 'colorize' #gem allows me to colorize my CLI output

class Playlist
  attr_accessor :artistInput, :artist_list

  def initialize
    @artistInput = artistInput
    @artist_list = []
    @artist = @artist


  end
#welcome method to print rules of the application, initiated by the 'main' class
  def self.start #welcome to the application + rules
    puts "-------------------------------------------------------------------------------------------------------------------"
    puts "|This Playlist Creator application will create you a static playlist from a given list of artists supplied by you.|".colorize(:color => :white, :background => :black)
    puts "-------------------------------------------------------------------------------------------------------------------"
    puts "Hint: To stop adding artists, type '\N\' + the [enter] key at any time."
    # puts "Hint: For artists with spaces, eg \'Lady Gaga\' - please remove the spaces and write as such \'LadyGaga\'."
  end
system "clear"
  def artistInput #loop that creates an artist_list array of an infinate amount of artists, stops at the keyword 'N'
    @artist_list = []

    while @artist != ""
      puts "\nWhat artist would you like to add to the Playlist?"
      @artist = gets.gsub(/\s+/, "")
      if @artist != 'N'
      puts "You have chosen to add #{@artist} to the Playlist."
      end
      break if @artist =~ /N/ #In testing this loop, ln 35 is required for 'N' to break out of this loop, if I remove it, 'N' will not break the loop.
      @artist_list << @artist.gsub(/\s+/, "") #.gsub removes spaces. 'Lady Gaga'  => 'LadyGaga'
    end                                       #this causes one bug in line 36, where the artist has no spaces, but this is required so that the URL in ln 52, is built correctly

  def build_list
#used to join the arrist array (artist_list), with '&artist='
    list = @artist_list
    list.join('&artist=')
  end

  def build_url_string
  string = build_list
  #echo nest playlist endpoint
  url = 'http://developer.echonest.com/api/v4/playlist/static?api_key=G3ABIRIXCOIGGCCRQ&artist=' + string
  end
system "clear"
  def parse_url
    url = build_url_string
    response = JSON.parse(RestClient.get url)  
    
    song = response['response']['songs'].each do |song|
    song.delete("artist_id") #used to delete "artist_id" from the printed playlist
    song.delete("id") #used to delete "d" from the printed playlist
    puts
    #used to display the playlist data, in the correct format
    song.each {|key, value| puts "#{key.colorize(:white)}: \'#{value.colorize(:color => :white, :background => :black)}\'" }
  end

  end


#prints how many artists are in the playlist
a = parse_url
puts "\nThere are #{a.length} songs in this Playlist\n\n" 
  



#Uncomment this section to see the raw data feed
# puts "////////////////raw data hash feed//////////////"
# puts "#{a.to_s}"
  
  end 

 
end












