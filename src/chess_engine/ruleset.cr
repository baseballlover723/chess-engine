require "./game"
require "./rule"
require "./static_ruleset"

module ChessEngine
  class RuleSet
    getter rules : Set(Rule)

    def initialize(game : Game, static_rules : StaticRuleSet)
      @rules = static_rules.map do |static_rule|
        static_rule.new(game)
      end.to_set
    end

    forward_missing_to @rules
  end
end
