# Add your code here
# def songs 
# [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]
# end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  error_message = "Invalid input, please try again"

  puts "Please enter a song name or number:"
  
  input = gets.chomp
  input_as_integer = input.to_i 
  
  if input_as_integer != 0
    puts (input_as_integer.to_i <= songs.size ? songs[input.to_i - 1] : error_message)
  else
    song = find_song_with_title(songs, input)
    puts (song != "" ? song : error_message)
  end
end

def find_song_with_title(songs, title)
  songs.reduce("") do |memo, song|
    memo = title if song.include?(title)
    memo
  end
end

def list(songs)
  songs.each_with_index { |song, index| puts "#{index + 1}. #{song}" }
end

def exit_jukebox
  puts "Goodbye!"
  exit
end