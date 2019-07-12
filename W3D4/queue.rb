class Queue

    def initialize
        @data = []
    end

    def enqueue(el)
        @data.unshift(el)
    end

    def dequeue
        @data.pop
    end

    def peek
        @data[-1]
    end
end