class MyClass
  def my_method(my_arg)
    my_arg * 2
  end
end

o = MyClass.new
puts o.my_method 3
puts o.send(:my_method, 6)
puts 'hello world'
