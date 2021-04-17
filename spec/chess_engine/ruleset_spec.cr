require "./spec_helper"

describe RuleSet do
  it "initializes the ruleset object with concrete rules" do
    game = Game.allocate
    static_rules = StaticRuleSet.new(Set(Rule.class){TestRule})
    ruleset = RuleSet.new(game, static_rules)

    ruleset.rules.empty?.should be_false
    ruleset.rules.each do |rule|
      rule.should be_a(Rule)
      rule.game.should be(game)
    end
  end
end
