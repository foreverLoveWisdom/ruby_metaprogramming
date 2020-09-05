# frozen_string_literal: true

class Array
  def self.add_new_method(name, &block)
    puts 'Defining method at runtime'
    puts "Self is: #{inspect}"
    send(:define_method, name) do |*args|
      puts "Self is: #{inspect}"
      block.call(self, *args)
    end
  end
end

Array.add_new_method('prepend_array') do |s, x|
  s.each { |e| puts "#{x} #{e}" }
  puts s.inspect
end

%w[cat dog catdog].prepend_array('Animal: ')
