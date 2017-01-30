class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until @game_over
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.5
      system('clear')
      sleep 0.5
    end
  end

  def require_sequence
    "Type the color names"
    @seq.each do |color|
      user_input = gets.chomp
      if color != user_input
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    "Round success"
  end

  def game_over_message
    "Game over"
  end

  def reset_game
    initialize
  end
end
