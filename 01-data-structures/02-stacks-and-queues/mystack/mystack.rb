class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    @stack.unshift(item)
    self.top = @stack.first
  end

  def pop
    self.top = @stack[1]
    @stack.shift
  end

  def empty?
    @stack.length == 0
  end
end
