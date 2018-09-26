class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
  end

  def enqueue(element)
    @queue.unshift(element)
    @head = @queue.last
    @tail = @queue.first
  end

  def dequeue
    @queue.delete_at(@queue.length-1)
    @head = @queue.last
    @tail = @queue.first
  end

  def empty?
    @queue.length == 0
  end
end
