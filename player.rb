require './game_info'
require 'json'

class Player
  include GameInfo
  VERSION = "Default Ruby folding player"
  PLAYER_NAME = 'Mandarine'

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
    if pair_in_hand?
      1000
    else
      50
    end
    #bet
  rescue
    0

    1000 if has_pair?(game_state)
  end


  def showdown(game_state)
  end

  def to_data(game_state)
    JSON.parse(game_state)
  end

  def community_cards(data)
    data['community_cards']
  end

  def player_data(data)
    data['players'].select{|e| e['name'] == PLAYER_NAME}
  end

  def my_cards(data)
    player_data(data)['hole_cards']
  end

  def detect_pair(cards)
    ranks = cards.map{ |card| card['rank'] }
    ranks.detect{ |card| ranks.count(card) >= 2 }
  end

  def has_pair?(game_state)
    data = to_data(game_state)
    if data
      all_cards = community_cards(data) + my_cards(data)

      detect_pair(all_cards) if all_cards.size > 0
    end
  end

end
