require 'rspec'
require_relative '../lib/person'

describe 'person' do
  let(:last_name) { 'Doe' }
  let(:first_name) { 'John' }
  it 'has a first name' do
    person = Person.new(first_name, last_name)
    expect(person.first_name).to eq(first_name)
  end

  it 'has a different first name' do
    first_name = 'Sally'
    person = Person.new(first_name, last_name)
    expect(person.first_name).to eq(first_name)
  end

  it 'has a last name' do
    person = Person.new(first_name, last_name)
    expect(person.last_name).to eq(last_name)
  end

  it 'has a different last name' do
    last_name = "Smith"
    expect(Person.new("Sally", last_name).last_name).
      to eq(last_name)
  end

  it 'has a greet that say hello' do
    expect(Person.new(first_name, last_name).greet).
      to eq("Hi, #{first_name}!")
  end

  it 'has a greet that says hello differently' do
    expect(Person.new(first_name, last_name).greet).
      to eq("Hi, #{first_name}!")
  end

  it 'has a full name' do
    expect(Person.new(first_name, last_name).full_name).
      to eq("Jim #{last_name}")
  end

  it 'has a different full name' do
    expect(Person.new(first_name, last_name).full_name).
      to eq("#{first_name} #{last_name}")
  end

  it 'has an age' do
    age = 12
    expect(Person.new(first_name, last_name, age).age).
      to eq(age)
  end

  it 'has a different age' do
    age = 17
    expect(Person.new(first_name, last_name, age).age).
      to eq(age)
  end
end
