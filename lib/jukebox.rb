songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1} #{song}"
  end 
end 

def play (songs)
	puts "Please enter a song name or number:"
	selection = gets.chomp
	songs.each_with_index do |song,i|
  	if selection == song || selection == "1".."9"
  		puts "Playing #{songs[i]}"
  	else
  		puts "Invalid input, please try again"
  	end
  end
end

def exit_jukebox 
  puts "Goodbye!"
  return
end 

def run(songs)
  user_input = ""
  until user_input == exit do
    help
		puts "Please enter a command:"
		user_input = gets.chomp
		case user_input
		when "help"
			help
		when "play"
			play(songs)
		when "list"
			list(songs)
		when "exit"
			exit_jukebox
			break
			end 
  end 
end 
