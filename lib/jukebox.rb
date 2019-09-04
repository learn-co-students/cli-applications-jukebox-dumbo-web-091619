require 'pry'

# Add your code here

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

# def say_hello(name)
  # "Hi #{name}!"
# end
# puts "Enter your name:"
# users_name = gets.strip
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  # new_arr = []
  array.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end

def play(my_songs)
  puts "Please enter a song name or number:"
  input = gets.chomp()
  
  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{my_songs[input.to_i - 1]}"
  elsif my_songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  # help
  puts "Please enter a command:"
  input = gets.strip
  
  while input != "exit"
    if input == "list"
      list(songs)
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "play"
      play(songs)
      puts "Please enter a command:"
      input = gets.strip
    elsif input == "help"
      help
      puts "Please enter a command:"
      input = gets.strip
    else
      puts "Invalid command"
      help
      puts "Please enter a command:"
      input = gets.strip
    end
  end
  exit_jukebox
end
