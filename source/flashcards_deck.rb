require 'flashcards_card'
require 'flashcard_samples'

class Deck

  attr_reader :deck, :cards
  def initialize
    @cards = []
    @deck = deck
  end

  # def add_cards_to_deck
  #   @cards << cards
  # end

  def shuffle
    cards.shuffle!
    cards
  end
end

