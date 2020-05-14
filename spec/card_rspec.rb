RSpec describe 'Card' do
  it 'has a type' do
    card = Class.new('Ace of Spades')
    expect(card.type) to eq('Ace of Spades')
  end
end
