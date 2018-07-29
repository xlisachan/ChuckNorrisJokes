require './chuck.rb'

input = ARGV

if input[0] == "random"
    ChuckJokes.random
elsif input[0] && input[1]
    ChuckJokes.replace_name(input[0], input[1])
elsif input[0].to_i == 0
    ChuckJokes.help
elsif input[0].to_i != 0
    ChuckJokes.get_joke_by_id(input[0])
end