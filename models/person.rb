class Person < ActiveRecord::Base
  attr_accessor :name

  def greeting
    "Hello #{@name}"
  end
end


person = Person.new
person.name = "Sally"
person.greeting # => "Hello Sally"
