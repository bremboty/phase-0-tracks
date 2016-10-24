require_relative 'game'

describe WordGame do
  let(:game) { WordGame.new }

  it "initializes instance with variable" do
    expect(WordGame.initialize(word)).to eq 'word'
  end


end