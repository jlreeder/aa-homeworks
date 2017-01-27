class Stack
  def initialize
    @contents = []
  end

  def add(el)
    @contents << el
  end

  def remove
    @contents.pop
  end

  def show
    p @contents
  end
end

def stack_tests
  puts "Initialize stack"
  stack = Stack.new
  puts "\nAdd 4 to stack"
  stack.add(4)
  stack.show
  puts "\nAdd q to stack"
  stack.add('q')
  stack.show
  puts "\nRemove q from stack"
  stack.remove
  stack.show
end

stack_tests if __FILE__ == $PROGRAM_NAME
