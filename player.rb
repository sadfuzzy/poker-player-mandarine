require './game_info'

class Player
  include GameInfo
  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
    # hard c
    @game_state = game_state
      
    #puts game_state["players"].inspect
    #puts game_state["community_cards"].inspect
    puts "game: #{game_state}"
    puts "my cards: #{my_cards.inspect}"
    puts "pair?: #{pair_in_hand?}"
    puts "me : #{me.inspect}"
    #puts my_cards.inspect
    0
    #bet
  rescue
    0
  end


  def showdown(game_state)

  end

end
