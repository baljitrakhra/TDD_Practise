require './greeter'

describe 'Greeter' do
  it 'greets Chloe' do
    name = 'Chloe'
    result = greet(name)
    expect(result).to eq 'Hello, Chloe, how are you today?'
  end
end