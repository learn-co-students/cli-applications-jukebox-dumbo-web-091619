# Add your code here
def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs)
    puts "Please enter a song name or number:"
    input_in_str = gets.chomp
    input_in_int = input_in_str.to_i

    if input_in_int > 0 && input_in_int <= songs.length + 1
        puts "Playing #{songs[input_in_int - 1]}"  
    elsif songs.include?(input_in_str)
        puts "Playing #{input_in_str}"
    else
        puts "Invalid input, please try again"
    end 
end

def list(songs)
    songs.each_with_index { |song, idx| puts "#{idx + 1}. #{song}"}
end

def exit_jukebox
    puts 'Goodbye'
    return
end

def run(songs)
    puts 'Please enter a command:'
    input = gets.chomp
    if input == "exit"
        exit_jukebox
    elsif input == "help"
        help
    elsif input == "list"
        list(songs)
    elsif input = "play"
        play(songs)
    else
        puts "Give a valid run command"
    end
end