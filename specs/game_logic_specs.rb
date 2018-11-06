require 'minitest/autorun'
require_relative '../models/game_logic'

class TestGameLogic < Minitest::Test

  def setup
    @game_logic1 = GameLogic.new("Rock", "Scissors")
    @game_logic2 = GameLogic.new("Rock", "Rock")
    @game_logic3 = GameLogic.new("Paper", "Rock")
    @game_logic4 = GameLogic.new("Scissors", "Paper")
    @game_logic5 = GameLogic.new("Scissors", "Rock")
    @game_logic6 = GameLogic.new("Rock", "Paper")
    @game_logic7 = GameLogic.new("Paper", "Scissors")
  end

  #Test initialize
  def test_game_logic_has_player_1
    assert_equal("Rock", @game_logic1.player1() )
  end

  def test_game_logic_has_player_2
    assert_equal("Scissors", @game_logic1.player2() )
  end

  #Test if draw
  def test_play_game__draw
    assert_equal("Draw!", @game_logic2.play_game)
  end

  #Test if player 1 wins
  def test_play_game__player1_wins_with_rock
    assert_equal("Player 1 Wins!!!", @game_logic1.play_game)
  end

  def test_play_game__player1_wins_with_paper
    assert_equal("Player 1 Wins!!!", @game_logic3.play_game)
  end

  def test_play_game__player1_wins_with_scissors
    assert_equal("Player 1 Wins!!!", @game_logic4.play_game)
  end

  #Test if player 2 wins
  def test_play_game__player2_wins_with_rock
    assert_equal("Player 2 Wins!!!", @game_logic5.play_game)
  end

  def test_play_game__player2_wins_with_paper
    assert_equal("Player 2 Wins!!!", @game_logic6.play_game)
  end

  def test_play_game__player2_wins_with_scissors
    assert_equal("Player 2 Wins!!!", @game_logic7.play_game)
  end

end
