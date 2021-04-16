require "./rule"

module ChessEngine
  module TestRule
    extend Rule

    def self.human_name() : String
      return "Testing Rule"
    end

    def self.generate_moves(game : Game) : Array(Move)
      puts "generating move"
      [] of Move
    end
  end
end
