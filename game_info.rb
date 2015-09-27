module GameInfo
  HIGH = %w(A K Q J)

  def select_bet
    if my_cards_include('A') ||
      my_cards_include('K') ||
      my_cards_include('Q') ||
      my_cards_include('J') ||
      my_cards.uniq.size == 1
      500
    else
      100
    end
  end #.smfhgl

  def my_cards_include(card)
    my_cards.find {|c| c == card}
  end

  def bet_with_current(amount)
    current_bet < 500 ? amount : current_bet
  end

  def stack
    me["stack"]
  end

  def current_bet
    @game_state["current_buy_in"]
  end

  def very_good?
    my_cards.include?("A") ||
    my_cards.include?("K")
  end

  def good_cards?
    my_cards.include?("A") ||
    my_cards.include?("K") ||
    my_cards.include?("Q") ||
    my_cards.include?("J")
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
