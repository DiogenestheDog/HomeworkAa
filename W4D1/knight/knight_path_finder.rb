require_relative "tree_node.rb"

class KnightPathFinder

	attr_accessor  :considered_positions, :start_pos, :root_node
    def initialize(pos)
		@start_pos = pos
		@considered_positions = [pos]
    end
	  
	# moves const from solution
	MOVES = [
		[-2, -1],
		[-2,  1],
		[-1, -2],
		[-1,  2],
		[ 1, -2],
		[ 1,  2],
		[ 2, -1],
		[ 2,  1]
	  ]
	  
    def self.valid_moves(pos)
		# checks if moves keep piece within board
		x, y = pos
		potential_moves = MOVES.map do |(mx, my)|
			[x + mx, y + my]
		end
		potential_moves.select { |move| move.all? { |space| space >= 0 and space < 8 } }
	end
	
	def new_move_positions(pos)
		moves = KnightPathFinder.valid_moves(pos).reject { |move| self.considered_positions.include?(move) }
		moves.each { |el| self.considered_positions << el }
		moves
	end

	def build_move_tree
		self.root_node = PolyTreeNode.new(self.start_pos)
		# search every possible path the piece can travel
		# keep going until out of bounds
		queue = [root_node]
		until queue.empty?
			shifted_node = queue.shift
			new_move_positions(shifted_node.value).each do |move|
				new_node = PolyTreeNode.new(move)
				new_node.parent = queue.first
				shifted_node.add_child(new_node)
				queue.push(new_node)
			end
		end
		root_node
	end

	def trace_path_back(destination)
		path = [destination]
		cur_node = destination
		while cur_node.parent
			cur_node = cur_node.parent
			path << cur_node.value
		end
		path
	end

	def find_path(pos)
		end_node = self.root_node.dfs(pos)
		trace_path_back(end_node)
	end
	
end