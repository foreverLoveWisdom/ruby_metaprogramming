# frozen_string_literal: true

class String
  def self.add_new_method(name, &block)
    send(:define_method, name) do |*args|
      puts "You created a method #{name}, and you are in it right now"
      puts 'Executing the block...'
      block.call(*args)
    end
  end
end

String.add_new_method('Newton') do |x, y, z|
  puts x + y + z
end

'string'.Newton(5, 8, 10)

String.send(:define_method, 'ahihi') do |a, b|
  puts a + b
end
'quickrun outputarstarst'.ahihi(3, 5)
