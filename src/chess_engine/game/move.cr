require "./game"

module ChessEngine
  class Move
    getter game : Game
    getter rule : Rule

    def initialize(@game : Game, @rule : Rule)
    end
  end
end
