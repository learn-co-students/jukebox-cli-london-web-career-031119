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

def list(my_songs)
  my_songs.each_with_index do |song, index|
    puts "#{index += 1}. #{song}"
  end
end

def play(arr)
  puts "Please enter a song name or number:"
  userNum = gets.chomp

  if arr.include?(userNum)
    puts "Playing #{userNum}"
  elsif userNum.to_i.between?(1, arr.size)
    puts "Playing #{arr[userNum.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  help()
  userInput = getInput()

  while (userInput != 'exit')
    if userInput == "exit"
      exit_jukebox()
    elsif userInput == "list"
      list()
    elsif userInput == "play"
      play()
    elsif userInput == "help"
      help()
    end
  userInput = getInput()
  end

  exit_jukebox

end

def getInput
  puts "Please enter a command:"
  input = gets.chomp
end

