$:.unshift (File.dirname(__FILE__))
#add 'require' paths to classes
require 'lib/playlist.rb'


#Welcoming message to the user
puts
puts '.....Welcome to the Playlist Creator.....'
puts

#Code that initiates a new Playlist Creator session
Playlist.start
playlist = Playlist.new




