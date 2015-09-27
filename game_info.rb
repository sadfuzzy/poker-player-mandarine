module GameInfo

  def pair_in_hand?
    my_cards[0] == my_cards[1]
  end

  def opponents
    # 
  end

  def card

  end

  def table_cards
    @game_state["community_cards"].map{|c| c['rank'] }
  end

  # returns 'AA' or '66' or '65' or '72'
  def my_cards
    me["hole_cards"].map {|card| card["rank"] }.join
  end

  def me
    @game_state["players"].select{|p| p["name"] == "Mandarine"}[0]
  end

end
