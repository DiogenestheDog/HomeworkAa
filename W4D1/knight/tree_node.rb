class PolyTreeNode
    attr_reader  :value
    attr_accessor :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []

    end

    def parent=(new_parent)
        unless new_parent.nil?
            if !new_parent.children.include?(self)
                if self.parent != nil
                    @parent.children.delete(self)
                end
                new_parent.children << self 
                @parent = new_parent
            end
        else
            @parent = nil
        end
    end
         
    def add_child(child)
        # unless self.children.include?(child)
            child.parent = self
        #     self.children << child
        # end
    end

    def remove_child(child)
        raise "Tried to remove node that isn't a child" if child && !self.children.include?(child)
        child.parent = nil
    end

#     def dfs(target_value)
#         return nil if self.children == 0 and self.value != target_value
#         return self if self.value == target_value
#         # iterate through children
#         # return child if value equals target value
#         val = self.children.map { |child| child.dfs(target_value) }.flatten
#         val
#     end
    def bfs(target_value)
        queue = []
        queue.push(self)
        while queue.length > 0
            temp = queue.shift
            return temp if temp.value == target_value
            queue += temp.children
        end
        nil
    end

    def dfs(target_value)
        # go to the left side
        # base case: check if node.value is target
        # call dfs on each child
        return self if self.value == target_value
        
        self.children.each do |child|
            result = child.dfs(target_value)
            return result unless result.nil?
        end
        nil
    end

    def inspect
        "value: #{@value.inspect}"
    end
end
