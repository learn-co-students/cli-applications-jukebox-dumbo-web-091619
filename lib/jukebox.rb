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
#how to use jukebox 
 puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program" 
end

def list(arr)
arr.each_with_index do |song , index|
puts "#{index+1}. #{song}"
  end 
end

def play(song)
  puts "Please enter a song name or number:"
  input = gets.strip 
  if input.to_i >= 1 && input.to_i <= song.length 
    puts "Playing #{song[input.to_i-1]}"
  elsif song.include?(input) 
    puts "Playing #{song.find {|song| song == input}}"
  else puts "Invalid input, please try again"
  end 
end

def exit_jukebox
  puts 'Goodbye'
end

def run (arr)
while true do 
puts "Please enter a command:"
input = gets.strip

 case input
  when "help"
     help
   when "list"
     list(arr)
    when "play"
     play(arr)
    when "exit"
     exit_jukebox
     break
   else puts "Invalid entry"
  end
end
end