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
def play(songss)
  puts "Please enter a song name or number:"
  input=gets.strip
  if (1..9).include?(input.to_i)
  puts "Playing #{songss[input.to_i-1]}"
  elsif songss.include?(input)
  puts "Playing #{input}"
  else 
  puts "Invalid input, please try again"
  end
end 
def list(songss)
  songss.each_with_index {|val,ind|
    puts "#{ind+1}. #{val}"
  }
end 
def exit_jukebox
  puts "Goodbye!"
end
def run(songs)
  command = ""
  while command
  puts "Please enter a command:"
  command=gets.strip
  case command
    when 'list'
    list(songs)
    when 'play'
    list(songs)
    play(songs)
    when 'exit'
    exit_jukebox
    break
    else
    help
    end
    end
end