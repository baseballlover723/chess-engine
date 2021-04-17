require "../static_ruleset"
require "../ruleset"

module ChessEngine
  class Game
    getter rules : RuleSet

    def initialize(static_rules : StaticRuleSet)
      @rules = RuleSet.allocate # needed so that it doesn't complain about rules being nil in ruleset
      @rules = RuleSet.new(self, static_rules)
    end
  end
end
