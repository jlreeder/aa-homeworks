class Queue
  def initialize
    @contents = []
  end

  def enqueue(el)
    @contents << el
  end

  def dequeue
    @contents.shift
  end

  def show
    p @contents
  end
end

def queue_tests
  puts "Initialize queue"
  queue = Queue.new
  puts "\nAdd 4 to queue"
  queue.enqueue(4)
  queue.show
  puts "\nAdd q to queue"
  queue.enqueue('q')
  queue.show
  puts "\nRemove 4 from queue"
  queue.dequeue
  queue.show
end

queue_tests if __FILE__ == $PROGRAM_NAME
