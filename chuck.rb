require 'rest-client'
require 'pry'
require 'chuck_norris'
require './app.rb'

class ChuckJokes
    def self.help
       puts "For a random joke, enter 'random' (eg. ruby chuck.rb random)"
       puts "For a specific joke, enter a number (eg. ruby chuck.rb 42)"
       puts "To replace 'Chuck Norris' with your name, enter your name (eg. ruby chuck.rb John Doe)."
    end
  
    def self.get_joke_by_id(id)
        puts ChuckNorris::JokeFinder.find_joke(id).joke
    end
  
    def self.replace_name(first_name_input, last_name_input)
        puts ChuckNorris::JokeFinder.get_joke(first_name: first_name_input, last_name: last_name_input).joke
    end
  
    def self.random
        puts ChuckNorris::JokeFinder.get_joke.joke
    end
end

