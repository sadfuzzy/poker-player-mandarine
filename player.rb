module GameInfo
  HIGH = %w(A K Q J)

  def select_bet
    pair_height = all_cards.detect{ |card| all_cards.count(card) >= 2 }

    if pair_height && HIGH.include?(pair_height) && (my_cards - [pair_height]).size < 2
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

#Группа 1: A-A, K-K, Q-Q, J-J, A-Ks
#Группа 2: T-T, A-Qs, A-Js, K-Qs, A-K
#Группа 3: 9-9, J-Ts, Q-Js, K-Js, A-Ts, A-Q
#Группа 4: T-9s, K-Q, 8-8, Q-Ts, 9-8s, J-9s, A-J, K-Ts
#Группа 5: 7-7, 8-7s, Q-9s, T-8s, K-J, Q-J, J-T, 7-6s, 9-7s, A-xs, 6-5s
#Группа 6: 6-6, A-T, 5-5,8-6s, K-T, Q-T, 5-4s, K-9s, J-8s, 7-5s
#Группа 7: 4-4, J-9, 6-4s, T-9, 5-3s, 3-3, 9-8,4-3s, 2-2, K-xs, T-7s, Q-8s
#Группа 8: 8-7, A-9, Q-9, 7-6,4-2s, 3-2s, 9-6s, 8-5s, 5-8, J-7s, 6-5, 5-4, 7-4s, K-9, T-8

class Player
  include GameInfo
  VERSION = "Default Ruby folding player"
  PLAYER_NAME = 'Mandarine'

  def bet_request(game_state)
    puts "START bet_request::"
    @game_state = game_state
    bet = select_bet

    puts "bet #{bet} # with: #{my_cards} table: #{table_cards}"
    bet
  end

  def showdown(game_state)
  end
end
