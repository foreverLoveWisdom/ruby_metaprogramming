# frozen_string_literal: true

class String
  def self.add_new_method(name)
    send(:define_method, name) do
      puts "You created a method #{name}, and you are in it right now"
    end
  end
end

String.add_new_method 'Newton'
'string'.Newton

String.send(:define_method, 'ahihi') { |a, b| puts(a + b); puts 'This is metaprogramming baby!!!'}

'arstarst'.ahihi(3, 5)
