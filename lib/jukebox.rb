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
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def list(songs_list)
  songs_list.each_with_index do |item, index|
    puts "#{(index + 1)}. #{songs_list [index]}"
  end
end

def play(songs_list)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{songs_list[user_input.to_i - 1]}"
    elsif songs_list.include?(user_input)
    puts "Playing #{user_input}"
  else puts "Invalid input, please try again"
end
end

def exit_jukebox
  user_input = "exit"
  puts "Goodbye"
end

def run(songs)
  while true
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == "play"
    play(songs)
     elsif user_input == "list"
      list(songs)
      elsif user_input == "exit"
        exit_jukebox
        break
      else user_input == "help"
        help
      end
    end
  end