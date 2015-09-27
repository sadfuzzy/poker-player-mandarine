
class Player

  VERSION = "Default Ruby folding player"

  def bet_request(game_state)
    puts game_state["players"].inspect
    rand(333)
  end

  def showdown(game_state)

  end
end
