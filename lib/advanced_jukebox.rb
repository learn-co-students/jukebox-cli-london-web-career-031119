#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer
require 'pry'

my_songs = {
"Go Go GO" => '/Users/mac/Development/jukebox-cli-london-web-career-031119/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/mac/Development/jukebox-cli-london-web-career-031119/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/mac/Development/jukebox-cli-london-web-career-031119/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/mac/Development/jukebox-cli-london-web-career-031119/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/mac/Development/jukebox-cli-london-web-career-031119/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/mac/Development/jukebox-cli-london-web-career-031119/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/mac/Development/jukebox-cli-london-web-career-031119/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  my_songs.collect do |key, value|
    puts key
end
end

  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  def play(my_songs)
    puts "Please enter a song name:"
    response = gets.chomp
   if my_songs.include?(response)
     puts "Playing #{response}"
     system "open #{my_songs[response]}"
     else
    puts "Invalid input, please try again"
  end
  end

  def exit_jukebox
    puts "Goodbye"
  end

  def run(my_songs)
    help
    puts "Please enter a command:"
  command = gets.chomp
  
  if command == "exit"
    exit_jukebox
  elsif command == "list"
    list(my_songs)
  elsif command == "play"
    play(my_songs)
  elsif command == "help"
    help
  else
    run(my_songs)
  end
  end
