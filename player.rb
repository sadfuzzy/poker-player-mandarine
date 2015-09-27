require './game_info'

class Player
  include GameInfo
  VERSION = "All in strategy v343"
  PLAYER_NAME = 'Mandarine'

  def bet_request(game_state)
    puts "START bet_request:: || ::"
    @game_state = game_state
    bet_size = select_bet

    puts "bet #{bet_size} # with: #{my_cards} table: #{table_cards}"
    #bet_size
    500
  end

  def showdown(game_state)
  end
end
