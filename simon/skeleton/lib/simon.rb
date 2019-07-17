class Simon
  COLORS = %w(red blue green yellow)
  EXPLETIVES = ["WOOT", "BAM", "WHAMO", "GOLLY", "GNARS"]
  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each do |color|
      puts color
      sleep(0.6)
      puts "--"
      system("clear")
      
    end
  end

  def require_sequence
    i = 0
    while i < seq.length
      puts "what's color #{i+1}?"
      input = gets.chomp
      if input == seq[i]
        i += 1
      else
        self.game_over = true
        break
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    p "#{EXPLETIVES.sample} you got it!"
    sleep(1)
    system("clear")
  end

  def game_over_message
    p "\\__ GAME OVER __/"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end
