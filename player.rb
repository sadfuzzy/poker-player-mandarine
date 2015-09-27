
class Player

  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
    # hard c
    @game_state = game_state
      
    #puts game_state["players"].inspect
    #puts game_state["community_cards"].inspect
    
    bet = if str_cards[0] == str_cards[1]
      rand(333)+300
    else
      rand(33)
    end
    puts "MY CARDS: #{str_cards}bet: #{bet}"
    bet
  end

  def showdown(game_state)

  end

  def opponents
    # 
  end

  def str_cards
    me["hole_cards"].map {|card| card["rank"] }.join
  end

  def me
    @game_state["players"].select{|p| p["name"] == "Mandarine"}
  end
end
