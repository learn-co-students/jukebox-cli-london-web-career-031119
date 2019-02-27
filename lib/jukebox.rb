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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.chomp

  if songs.include?(user_choice)
    puts "Playing #{user_choice}"
  elsif user_choice.to_i.between?(1,songs.size)
    puts "Playing #{songs[user_choice.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end

end

def list(songs)
  songs.each_with_index { |song, i|
    puts "#{i + 1}. " + song
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = prompt_user

  while (user_input != "exit")
    case user_input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    else
      "Invalid input, please try again"
    end
    user_input = prompt_user
  end

  exit_jukebox

end

def prompt_user
  puts "Please enter a command:"
  user_input = gets.chomp
end
