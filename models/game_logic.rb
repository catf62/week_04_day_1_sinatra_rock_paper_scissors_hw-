class GameLogic

  attr_reader :player1, :player2

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play_game
    if @player1 == @player2
      return "Draw!"
    elsif @player1 == "Rock" && @player2 == "Scissors"
      return "Player 1 Wins!!!"
    elsif @player1 == "Paper" && @player2 == "Rock"
      return "Player 1 Wins!!!"
    elsif @player1 == "Scissors" && @player2 == "Paper"
      return "Player 1 Wins!!!"
    elsif @player1 == "Scissors" && @player2 == "Rock"
      return "Player 2 Wins!!!"
    elsif @player1 == "Rock" && @player2 == "Paper"
      return "Player 2 Wins!!!"
    elsif @player1 == "Paper" && @player2 == "Scissors"
      return "Player 2 Wins!!!"
    else
      return "Oh noes that's not a recognised hand gesture!"
    end
  end

end
