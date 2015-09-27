
class Player

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

  def pair_in_hand?
    my_cards[0] == my_cards[1]
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
    @game_state["players"].select{|p| p["name"] == "Mandarine"}[0]
  end
end
