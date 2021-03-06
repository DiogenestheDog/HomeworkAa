# Remember, a map stores information in key-value pairs, 
# where the keys are always unique. When implemented with arrays, 
# a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance 
# methods: set(key, value), get(key), delete(key), show. 
# Note that the set method can be used to either create a 
# new key-value pair or update the value for a pre-existing key. 
# It's up to you to check whether a key currently exists!

class Map


    def initialize
        @data = []
    end

    def set(tuple)
        return false if tuple.length != 2
        key, value = tuple
        if @data.any? { |tuple| tuple.first ==  key}
            self.delete(key)
            @data << [key, value]
        else
            @data << [key, value]
        end
    end

    def get(key)
        keys = @data.map { |tuple| tuple.first }
        @data[keys.index(key)][1]
    end

    def delete(key)
        keys = @data.map { |tuple| tuple.first }
        @data.slice!(keys.index(key))
    end

    def show
        @data
    end
end