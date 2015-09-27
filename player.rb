
class Player

  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
    puts "# ---"
    puts game_state["players"].inspect
    puts game_state["community_cards"].inspect
    rand(333)
  end

  def showdown(game_state)

  end
end
