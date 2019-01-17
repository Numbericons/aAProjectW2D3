require 'card'
require 'deck'

RSpec.describe Card do
    subject(:card) { Card.new(10, "spade") }
    describe "#initialize" do
        it "Initializes with a rank and suit" do
            expect(card.rank).to eq(10)
            expect(card.suit).to eq("spade")
        end

        it "Outputs error if given invalid suit" do
            expect { Card.new(5, "some kind of junk text") }.to raise_error(SuitError)
        end
        
        it "Outputs error if given invalid rank" do
            expect { Card.new(50, "heart") }.to raise_error(RankError)
        end
    end
end

RSpec.describe Deck do
    subject(:deck) { Deck.new }
    #is a card? be_a

    describe "#initialize" do
        it "Creates a deck of 52 cards" do 
            expect(deck.cards.count).to eq(52)
        end
        it "It creates 52 card objects" do
            expect(deck.cards.all?{|card| card.is_a?(Card)}).to be true
        end
    end

    describe "#deck_shuffle!" do 
        it "Shuffles card array" do 
            unshuffled = deck.cards.dup
            deck.deck_shuffle!
            expect(deck.cards).to_not eq(unshuffled)
        end
    end
end