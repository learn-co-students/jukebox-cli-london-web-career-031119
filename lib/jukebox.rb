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
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or numbers:"
  user_answer = gets.chomp 
  songs.each_with_index do |song, index|
    if user_answer == song 
      puts "Playing #{song}"
    elsif user_answer.to_i == index + 1 
      puts "Playing #{songs[index]}"
    else 
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_answer = gets.chomp 
  while user_answer != "exit"
    if user_answer == "list"
      list(songs)
    elsif user_answer == "play"
      play(songs)
    elsif user_answer == "help"
      help 
    elsif user_answer == "exit"
      exit_jukebox
    break
    end
  end
end




