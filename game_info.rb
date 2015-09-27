module GameInfo
  HIGH = %w(A K Q J)

  def select_bet
    pair_height = all_cards.detect{ |card| all_cards.count(card) >= 2 }
    have_pair = HIGH.include?(pair_height) && my_cards_include(pair_height)
    puts "my cards: #{my_cards.inspect}, have-pair #{have_pair} with #{pair_height} and good? #{good_cards?} or very #{very_good?}"
    if have_pair
      bet_with_current rand(100)+122

    elsif good_cards? && very_good?
      bet_with_current rand(233)+122 

    elsif good_cards?
      bet_with_current rand(133)+42

    elsif current_bet < 100 && rand(5) == 2
      stack 

    else
      0
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
