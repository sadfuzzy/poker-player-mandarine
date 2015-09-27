module GameInfo
  HIGH = %w(A K Q J)

  def select_bet
    pair_height = all_cards.detect{ |card| all_cards.count(card) >= 2 }

    if pair_height && HIGH.include?(pair_height) && (my_cards - pair_height).size < 2
      if current_bet < 500
        500
      elsif
        current_bet
      end
    elsif good_cards?
      very_good? ? (current_bet < 500 ? 333 : current_bet) : 200
    else
      current_bet < 100 ? current_bet : 0
    end
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

  def opponents
    #
  end

  def ready_push?

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
