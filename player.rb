
class Player

  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
    # hard c
    @game_state = game_state
      
    #puts game_state["players"].inspect
    #puts game_state["community_cards"].inspect
    puts me.inspect
    puts my_cards.inspect
    rand(40)
    #puts "MY CARDS: #{str_cards}bet: #{bet}"
    #bet
  end

  def showdown(game_state)

  end

  def opponents
    # 
  end

  # returns 'AA' or '66' or '65' or '72'
  def my_cards
    me["hole_cards"].map {|card| card["rank"] }.join
  end

  def me
    @game_state["players"].select{|p| p["name"] == "Mandarine"}
  end
end
