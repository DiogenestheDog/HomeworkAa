class GraphNode

    attr_reader :val
    attr_accessor :neighbors

    def initialize(val, neighbors =nil)
        @val = val
        @neighbors ||= []
    end

end

    def bfs(starting_node, target_value)
        # make set dont move to neighbor if val in set
        # assuming all unique vals
        checked = Set.new
        to_check = []
        to_check << starting_node
        while to_check.length > 0
            temp = to_check.shift
            return temp.val if temp.val == target_value
            checked << temp
            temp.neighbors.each do |node|
                to_check.push(node) unless checked.include?(node)
            end           
        end
        nil 
    end