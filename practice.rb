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

def help
  puts "I accept the following commands:/"
  puts "/- help : displays this help message/"
  puts "/- list : displays a list of songs you can play/"
  puts "/- play : lets you choose a song to play/"
  puts "/- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  
  input = gets.strip
  
  songs.each_with_index do |item, index|
    if item == input.to_s || index == (input.to_i - 1)
      return "Playing #{item}"
    end
  end
  
  return "Invalid input, please try again"

end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
  if input == "exit"
    exit_jukebox
  elsif input == "help"
    help
  elsif input == "play"
    play(songs)
  elsif input == "list"
    list(songs)
  else 
    puts "That is not a valid command"
  end
end

puts play(songs)