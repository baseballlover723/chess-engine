require "./rule"

module ChessEngine
  class StaticRuleSet
    getter rules : Set(Rule.class)

    def initialize(@rules : Set(Rule.class))
    end

    forward_missing_to @rules
  end
end
