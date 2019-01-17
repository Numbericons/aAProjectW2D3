require_relative 'card'

class Deck
    attr_reader :cards

    def initialize
        @cards = self.populate
    end

    def deck_shuffle!
        self.cards.shuffle!
    end

    def populate
        result = []
        Card::SUITS.each do |suit|
            Card::RANKS.each do |rank|
                result << Card.new(rank, suit)
            end
        end
        result
    end
end