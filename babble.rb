require 'spellchecker'
require 'tempfile'

Spellchecker::check("WordToCheck")[0][:correct]

class Babble

  def initialize
  end

  def run()
    prompt = "> "
    print prompt

    user_input = nil
    until (user_input == ":quit")
        puts "Please enter a 1 or 2."
        user_input = gets.chomp.to_i
    end

    if user_input == ":quit"
      puts "Thanks for playing, total score: 45"
    end
  end

end

Babble.new.run
