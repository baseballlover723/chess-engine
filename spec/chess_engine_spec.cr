require "./spec_helper"

describe ChessEngine do
  it "reads the version at compile time" do
    ChessEngine::VERSION.should eq("0.0.1")
  end

  it "can start a game" do
    game = ChessEngine.new_game
    game.should be_a(Game)
  end

  it "initializes the game object with default rules" do
    game = ChessEngine.new_game

    game.rules.should be_a(RuleSet)
    game.rules.empty?.should be_false
    # TODO check against default rules
  end
end
