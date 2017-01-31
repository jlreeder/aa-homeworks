class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = place_stones
    @player1 = name1
    @player2 = name2
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(1, 14)
  end

  def make_move(start_pos, current_player)
    stones = pick_up_stones(start_pos)
    distribute_stones_after(stones, start_pos, current_player)
    render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end

  private

  def place_stones
    start_cups = Array.new(14) { [:stone, :stone, :stone, :stone] }
    start_cups[6] = []
    start_cups[13] = []
    start_cups
  end

  def pick_up_stones(pos)
    stones = cups[pos]
    cups[pos] = []
    stones
  end

  def distribute_stones_after(stones, start_pos, player)
    current_pos = start_pos
    until stones.empty?
      current_pos = (current_pos + 1) % cups.length
      next if current_pos == opponent_cup(player)
      cups[current_pos] << stones.pop
    end
  end

  def opponent_cup(player)
    player == @player1 ? 13 : 6
  end
end
