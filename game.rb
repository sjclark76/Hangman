# frozen_string_literal: true
require './words'
require './game_status'

class Game

  def initialize(number_of_lives = 8)
    @number_of_lives = number_of_lives
    @word = Words.generate.downcase
    puts @word
    @word_hash = {}
    @word.each_char do |character|
      if @word_hash[character] == nil
        @word_hash[character] = false
      end
    end

  end

  # Guess if the letter exists in the word
  def guess?(letter)
    lower_case_letter = letter.downcase
    success = false
    if @word_hash[lower_case_letter] != nil
      @word_hash[lower_case_letter] = true
      success = true
    else
      @number_of_lives -= 1;
    end
    success
  end

  # @return a value representing the current status of the game
  # @return Game_Status::IN_PROGRESS | Game_Status::WIN | Game_Status::LOSE
  def get_game_status

    is_incomplete = @word_hash.any? { |_, value| value == false }

    if number_of_lives > 0
      is_incomplete ? Game_Status::IN_PROGRESS : Game_Status::WIN
    else
      Game_Status::LOSE
    end

  end

  # the current word that needs to be guessed with the missing values returned as *
  # @example f**b**
  def word_to_guess

    result = ""
    @word.each_char do |letter|
      result += @word_hash[letter] == true ? letter : "*"
    end
    result

  end

  attr_reader :word
  attr_reader :number_of_lives
end
