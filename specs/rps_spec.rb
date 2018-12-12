require 'minitest/autorun'
require_relative('..models/game')

class TestRps < Minitest::Test


  “def setup
    @game = RPSGame.new("rock", "scissors")
    @game1 = RPSGame.new("rock", "paper")
    @game2 = RPSGame.new("paper", "paper")
    @game3 = RPSGame.new("rock", "rock")
  end

   def test_rock_scissors
     assert_equal("Player 1 wins", @game.round)
   end

    def test_rock_paper
      assert_equal("Player 2 wins", @game1.round)
    end

    def test_paper_paper
      assert_equal("Draw", @game2.round)
    end

    def test_rock_rock
      assert_equal("Draw", @game3.round)
    end
