#require './game_info'

class Player
  #include GameInfo
  VERSION = "All in strategy"
  PLAYER_NAME = 'Mandarine'

  def bet_request(game_state)
    #puts "START bet_request::"
    #@game_state = game_state
    #bet = select_bet

    #puts "bet #{bet} # with: #{my_cards} table: #{table_cards}"
    #bet
    1000
  end

  def showdown(game_state)
  end
end
