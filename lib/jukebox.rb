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
  puts "I Accepts the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each { |e| puts "#{songs.index(e) + 1}. #{e}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  if choice.to_i.to_s == choice
    choice = choice.to_i
    choice -= 1
    songs[choice] != nil ? (puts "Playing #{songs[choice]}") : (puts "Invalid input, please try again")
  else
    songs.include?(choice) ? (puts "Playing #{choice}") : (puts "Invalid input, please try again")
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  input = ""
  while input != "exit" do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    else
      puts "Sorry I did not understand that"
    end
  end
end
