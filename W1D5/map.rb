class Map
  def initialize
    @contents = []
  end

  def assign(key, val)
    idx = lookup(key)
    idx.nil? ? @contents << [key, val] : @contents.insert(idx, [key, val])
  end

  def lookup(key)
    idx = @contents.index { |pair| pair.first == key }
    idx.nil? ? nil : @contents[idx].last
  end

  def remove(key)
  end

  def show
    p @contents
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
end

map_tests if __FILE__ == $PROGRAM_NAME
