# Constant are just like files in Linux system
# I can have constants with the same name as long as they are in different directories

module Playground
  MyConstant = 'Outer constant'.freeze

  class MyClass
    MyConstant = 'Inner Constant'.freeze
  end
end
