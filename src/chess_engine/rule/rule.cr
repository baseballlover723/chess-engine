require "../game"
require "../game/move"
# require "./*"

module ChessEngine
  module Rule
    abstract def human_name() : String
    abstract def generate_moves(game : Game) : Array(Move)

  end
end
