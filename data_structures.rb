class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store.push(el)
  end

  def dequeue
    @store.shift
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end
end

class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(el)
    @store.push(el)
  end

  def peek
    @store.last
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end
end

class StackQueue
  def initialize
    @stack1 = MyStack.new
    @stack2 = MyStack.new
  end

  def enqueue(el)
    @stack1.push(el)
  end

  def dequeue
    until @stack1.size == 1
      el = @stack1.pop
      @stack2.push(el)
    end

    returned_element = @stack1.pop

    until @stack2.empty?
      el = @stack2.pop
      @stack1.push(el)
    end

    returned_element
  end
end

stack_queue = StackQueue.new
stack_queue.enqueue(1)
stack_queue.enqueue(2)
stack_queue.enqueue(3)
p stack_queue.dequeue
stack_queue.enqueue(3)
p stack_queue.dequeue
