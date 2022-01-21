require 'spellchecker'
require 'tempfile'

require_relative "./tile_bag.rb"
require_relative "./tile_group.rb"
require_relative "./tile_rack.rb"
require_relative "./word.rb"

class Babble

  def initialize
    @tb = TileBag.new
    @tg = TileGroup.new
    @tr = TileRack.new
    @wd = Word.new
    @user_input = ""
    @total_score = 0
    @total_number_played = 0
  end

  def run()
    puts "==============================="
    puts "Welcome to the Babble Game"
    puts "type ':quit' to exit"
    puts "==============================="

    until (@user_input == ":quit")
      get_rack_tiles
      puts "Make a word from these tiles: " + @tr.hand
      prompt = "> "
      print prompt
      @user_input = gets.chomp.upcase

      if @user_input == ":quit" || @user_input == ":QUIT"
        break
      elsif @user_input == ""
        puts "Please enter a word using the tiles"
      elsif (@user_input != "" && Spellchecker::check(@user_input)[0][:correct] == true && @tr.has_tiles_for?(@user_input) == false)
        puts "Not enough tiles"
      elsif (@user_input != "" && Spellchecker::check(@user_input)[0][:correct] == true && @tr.has_tiles_for?(@user_input) == true)
        process_word
      else
        puts "Not a valid word"
      end

    end

    die

  end

  def process_word
    @played_word = @tr.remove_word(@user_input)
    @word_tiles = @played_word.tiles
    @word_score = @played_word.score
    puts "You made " + @user_input.to_s + " for " + @word_score.to_s + " points"
    puts "Your current total score: " + @total_score.to_s
    calculate_total_score(@word_score)
    number_tiles_played(@word_tiles.length)
  end

  def number_tiles_played(number_played)
    @number_played = number_played
    @total_number_played += @number_played
    return @total_number_played
  end

  def calculate_total_score(score)
    @score = score
    @total_score += @score
    return @total_score
  end

  # pull out random tiles to play on rack
  def get_rack_tiles
    @tr.number_of_tiles_needed.times() {
      @random_tile = @tb.draw_tile
      @tr.append(@random_tile)
    }
  end

  def die
    puts "Thanks for playing, total score: " + @total_score.to_s
    puts "Number of tiles played: " + @total_number_played.to_s
    puts "Number of tiles left in bag: " + @tb.number_tiles_left.to_s
    puts "Number of tiles left on rack: " + (7 - @tr.number_of_tiles_needed).to_s
    exit!
  end

end

Babble.new.run
