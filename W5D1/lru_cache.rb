  class LRUCache
    def initialize

    end

    def count
      # returns number of elements currently in cache
    end

    def add(el)
      # adds element to cache according to LRU principle
    end

    def show
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!
    def head
        
    end

  end

  class LinkedNode

    def initialize(val, prev, following)
        @val = val
        @prev = prev
        @following = following
    end

    def move(prev, following)
        @prev = prev
        @following = following
    end
  end