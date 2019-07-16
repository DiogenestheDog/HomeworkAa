require_relative "knight_path_finder.rb"

sir_robin = KnightPathFinder.new([0,0])

p sir_robin.build_move_tree

p sir_robin.find_path([7,7])