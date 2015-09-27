module GameInfo

  def pair_in_hand?
    my_cards[0] == my_cards[1]
  end

  def opponents
    #
  end

  def ready_push?
    
  end

  def good_cards?
    #my_cards.include?
    rand(5) == 3
  end

  def have_set?
    all_cards
  endk

  def card

  end

  def all_cards
    my_cards + table_cards
  end

  # return array of kinds
  def table_cards
    @game_state["community_cards"].map{|c| c['rank'] }
  end

  # returns 'AA' or '66' or '65' or '72'
  def my_cards
    me["hole_cards"].map {|card| card["rank"] }
  end

  def me
    @game_state["players"].select{|p| p["name"] == "Mandarine"}[0]
  end

end
