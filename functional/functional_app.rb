# frozen_string_literal: true

require '../options'
# require './game'
# require './game_status'

# Options.new.printHelp
# game = Game.new
# prompt = "Time to guess (#{game.number_of_lives} lives):"

puts "Beginning a new game of hangman "
puts "('--help' for more options):"
# puts prompt

loop do

  input = gets.chomp

  if input == "exit"
    break
  end

  if input == '--help'
    Options.new.printHelp
  elsif input == '--reset'
    # game = Game.new
  elsif input.length == 1
    # result = game.guess?(input)
    # puts "#{result ? 'Correct Guess' : 'Incorrect Guess'} #{game.number_of_lives} lives remaining"
    # puts game.word_to_guess
    #
    # if game.get_game_status == Game_Status::WIN
    #   puts "Congratulations You Won. Starting a new game"
    #   game = Game.new
    # elsif game.get_game_status == Game_Status::LOSE
    #   puts "Better luck next time..the correct answer was: '#{game.word}'"
    #   game = Game.new
    # end
  else
    Options.new.printHelp
  end

  # Do something with the user input...
end