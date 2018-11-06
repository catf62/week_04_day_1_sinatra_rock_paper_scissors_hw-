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
      return "Player 1 Wins with Rock!!!"
    elsif @player1 == "Paper" && @player2 == "Rock"
      return "Player 1 Wins with Paper!!!"
    elsif @player1 == "Scissors" && @player2 == "Paper"
      return "Player 1 Wins with Scissors!!!"
    elsif @player1 == "Scissors" && @player2 == "Rock"
      return "Player 2 Wins with Rock!!!"
    elsif @player1 == "Rock" && @player2 == "Paper"
      return "Player 2 Wins with Paper!!!"
    elsif @player1 == "Paper" && @player2 == "Scissors"
      return "Player 2 Wins with Scissors!!!"
    else
      return "Oh noes that's not a recognised hand gesture!"
    end
  end

end
