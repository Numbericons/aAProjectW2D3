require 'rspec'
require 'tdd'


RSpec.describe Array do
    describe "#my_uniq" do
        subject(:arr) { [1,2,3,3,4,5,5] }
        it "outputs unique values from an array" do 
            expect(arr.my_uniq).to eq(arr.uniq)
        end
    end

    describe "#two_sum" do
        subject(:arr) {[-1, 0, 2, -2, 1]}
        it "outputs pairs that sum to zero" do
            expect(arr.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "#my_transpose" do
        subject(:arr) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }
        it "outputs the transposed of input matrix" do
            expect(arr.my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
        end
    end

    describe "#stock_picker" do
        subject(:arr) { [2, 4, 5, 3] } 
        let(:arr2) { [7,6,5,3] }
        it "returns array of indexes that maximize return" do 
            expect(arr.stock_picker).to eq([0,2])
        end

        it "returns nil if no possible profit" do 
            expect(arr2.stock_picker).to be nil
        end
    end
end

RSpec.describe TowersOfHanoi do 
    subject(:tower) {TowersOfHanoi.new('Jack Sam whatever')}
    describe "#initialize" do 
        it "initializes 3 disks on peg 1" do 
            expect(tower.pegs[0].count).to eq(3)
        end

        it "sets player name" do
            expect(tower.player_name).to eq('Jack Sam whatever')
        end
    end
end