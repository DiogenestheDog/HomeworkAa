class GraphNode

    def initialize(val, neighbors =nil)
        @val = val
        @neighbors ||= []
    end
end