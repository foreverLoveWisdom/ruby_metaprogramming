# frozen_string_literal: true

class Greeting
  has_many :arstarst
  arr = []
  # arr.reject { |key,value| key, value }

  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

my_object = Greeting.new 'Hellow'
puts my_object.class
puts my_object.class.instance_methods(false)
puts my_object.instance_variables
