require "./rule"

module ChessEngine
  class TestRule < Rule
    def human_name : String
      return "Testing Rule"
    end

    def generate_moves : Set(Move)
      puts "generating move"
      [] of Move
    end
  end
end
