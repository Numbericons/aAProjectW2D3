class SuitError < StandardError;end
class RankError < StandardError;end

class Card
    SUITS = ["spade","heart","diamond","club"]
    RANKS = (2..14).to_a

    attr_reader :suit, :rank

    def initialize(rank, suit)
        raise SuitError unless SUITS.include?(suit)
        raise RankError unless RANKS.include?(rank)
        @suit = suit
        @rank = rank
    end
end