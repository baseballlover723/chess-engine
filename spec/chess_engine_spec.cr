require "./spec_helper"

describe ChessEngine do
  it "reads the version at compile time" do
    ChessEngine::VERSION.should eq("0.0.1")
  end

  it "can start a game" do
    game = ChessEngine.new_game
    game.should be_a(ChessEngine::Game)
  end
end
