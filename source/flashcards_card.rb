require 'flashcards_deck'
require 'flashcard_samples'

class Card

  attr_accessor :term, :definition, :guess
  def initialize
    @term = term
    @definition = definition
    @guess = guess
  end


  def question
    @definition
  end

  def answer
    @term
  end

 def correct?(guess)
   @term == guess
  end


  def display
    if correct?
     puts "#{term}, was the correct guess, WAY TO GO BITCH!"
   else
    puts "#{guess}, was not the correct answer, please try again"
  end
end

  # def guess_counter

  #   if correct? != true
  #     counter += 1
  # end
end
