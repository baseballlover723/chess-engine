require "../game"
require "../game/move"

module ChessEngine
  abstract class Rule
    getter game : Game

    def initialize(@game : Game)
    end

    abstract def human_name : String
    abstract def generate_moves : Set(Move)
  end
end
