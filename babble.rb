require 'spellchecker'
require 'tempfile'

Spellchecker::check("WordToCheck")[0][:correct]

class Babble

  def initialize
  end

  def run()
    puts "==============================="
    puts "Welcome to the Babble Game"
    puts "type ':quit' to exit"
    puts "==============================="

    @user_input = 0
    until (@user_input == ":quit")
      prompt = "> "
      print prompt
      @user_input = gets.chomp

      if @user_input == ":quit"
        break
      end

    end

    die

  end

  def die
    puts "Thanks for playing, total score: 45"
    exit!
  end


end

Babble.new.run
