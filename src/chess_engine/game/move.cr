require "./game"

module ChessEngine
  class Move
    def initialize(@game : Game, @rule : Rule)
    end
  end
end
