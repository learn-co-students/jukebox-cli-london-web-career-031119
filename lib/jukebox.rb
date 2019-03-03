require 'pry'

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


def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp
  songs.each_with_index do |selected_song, index|
    # binding.pry
    if user_song == selected_song
      puts "Playing #{selected_song}"
    elsif user_song.to_i == index + 1
      puts "Playing #{selected_song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  user_choice = ""
  while user_choice
    user_choice = gets.chomp
    if user_choice == "play"
    play(songs)
    elsif user_choice == "list"
      list(songs)
    elsif user_choice == "exit"
      exit_jukebox
      break
    end
  end
end
