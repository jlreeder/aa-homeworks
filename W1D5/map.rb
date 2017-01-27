class Map
  def initialize
    @contents = []
  end

  def assign(key, val)
    idx = index(key)
    idx.nil? ? @contents << [key, val] : @contents[idx] = [key, val]
  end

  def lookup(key)
    idx = index(key)
    idx.nil? ? nil : @contents[idx].last
  end

  def remove(key)
    idx = index(key)
    idx.nil? ? nil : @contents.delete_at(idx)
  end

  def show
    p @contents
  end

  private

  def index(key)
    @contents.index { |pair| pair.first == key }
  end
end

def map_tests
  puts "Initialize map"
  map = Map.new
  map.show
  puts "\nAssign 4 to 'kangaroo'"
  map.assign(4, 'kangaroo')
  map.show
  puts "Lookup value at 4"
  map.lookup(4)
  puts "\nAssign 7 to 'wallaby'"
  map.assign(7, 'wallaby')
  map.show
  puts "\nRemove 4 from map"
  map.remove(4)
  map.show
  puts "\nReassign 7 to 'wombat'"
  map.assign(7, 'wombat')
  map.show
end

map_tests if __FILE__ == $PROGRAM_NAME
