# frozen_string_literal: true

class Words
  # This method returns a random dictionary word longer than 4 characters in length
  def self.generate
    words = File.readlines('/usr/share/dict/words')
    words.select! { |word| word.length >= 4 }
    words.sample.chomp
  end
end
