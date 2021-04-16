require "./rule"

module ChessEngine
  class RuleSet
    def initialize(@rules : Array(Rule))
    end
  end
end
