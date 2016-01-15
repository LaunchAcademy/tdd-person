require 'rspec'

require_relative '../lib/a_file'

describe 'basic math' do
  it 'adds numbers together' do
    expect(4+2).to eq(6)
  end

  it 'subtracts numbers from one another' do
    expect(4-2).to eq(2)
  end

  it 'does something wrong' do
    expect(4+5).to eq(9)
  end
end

describe 'greeting' do
  it 'says hello to Dan as an instructor' do
    name = "Dan"
    expect(greeting(name)).to eq("Hi Instructor #{name}")
  end

  it 'says hello Sally' do
    name = "Sally"
    expect(greeting(name)).to eq("Hi #{name}")
  end
end
