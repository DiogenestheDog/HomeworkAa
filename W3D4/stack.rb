class Stack
    def initialize
      # create ivar to store stack here!
      @data = []
    end

    def push(el)
      # adds an element to the stack
      @data << el
    end

    def pop
      # removes one element from the stack
      @data.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @data[-1]
    end
  end