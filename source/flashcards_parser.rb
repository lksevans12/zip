require 'flashcard_samples'
require 'flashcards_card'

# module TextParser
#   def self.get_cards
#     file = 'flashcard_samples.txt'
#     File.readlines(file).each do |line|
#       puts line
#     end
#   end
# end

# cards = TextParser.get_cards('flashcard_samples.txt')
# flashcards = Card.new(cards)

module CardParser
  extend self

  def read_file(filepath)
    array = []
    File.open(filepath, 'r').each do |line|
      array << line
    end
    array
  end

  def make_cards(file)
    deck = []
    card = {}
    lines_per_card = 3
    read_file(file).each_with_index do |line, index|
      if index % lines_per_card == 0
        card[:definition] = line
      elsif index % lines_per_card == 1
        card[:term] = line
      elsif index % lines_per_card == 2
        deck << card
      end
    deck
    end
  end

end
