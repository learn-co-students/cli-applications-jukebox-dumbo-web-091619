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

def play(song_arr)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if input.to_i >= 1 && input.to_i <= song_arr.length
    puts "Playing #{song_arr[input.to_i - 1]}"
  elsif song_arr.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(song_arr)
  song_arr.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  while true do
    puts "Please enter a command:"
    run_input = gets.strip
    case run_input
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
    end
  end
end