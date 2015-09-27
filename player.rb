
class Player

  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
    # hard c
    @game_state = game_state
      
    #puts game_state["players"].inspect
    #puts game_state["community_cards"].inspect
    
    puts me.inspect
    rand(506) + 100
  end

  def showdown(game_state)

  end

  def opponents
    # 
  end

  def me
    @game_state["players"].select{|p| p["name"] == "Mandarine"}
  end
end
