class Person
  attr_reader :first_name
  attr_reader :last_name
  attr_reader :age

  def initialize(first_name, last_name, age = nil)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def greet
    "Hi, #{@first_name}!"
  end

  def full_name
    [@first_name, @last_name].join(" ")
  end
end
