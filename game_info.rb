module GameInfo

  def select_bet
    pair_height = all_cards.detect{ |card| ranks.count(card) >= 2 }

    if pair_height && %w(A K Q J T).include?(pair_height)
      if current_bet < 500
        500
      else
        current_bet*2
      end
    else
      current_bet < 100 ? current_bet : 0
    end
  end
  #
  # def bid(num)
  #   detect_bids
  # end

  def current_bet
    @game_info["current_buy_in"]
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
  end

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
