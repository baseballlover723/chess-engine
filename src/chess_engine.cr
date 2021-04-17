# TODO: Write documentation for `ChessEngine`

require "./chess_engine/*"
require "./chess_engine/game"
require "./chess_engine/rule"
require "./chess_engine/rule/*"

module ChessEngine
  VERSION = {{ read_file(".version") }}

  def self.new_game : Game
    rules = Set(Rule.class){TestRule}
    rule_set = StaticRuleSet.new(rules)
    Game.new(rule_set)
  end
end
