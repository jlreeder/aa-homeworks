class Array

  def clever_octopus
    longest = ''

    each { |fish| longest = fish if longest.length < fish.length }

    longest
  end
end

if __FILE__ == $PROGRAM_NAME
  prey = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh',
          'fsh', 'fiiiissshhhhhh']

  puts 'Clever octopus:'
  puts prey.clever_octopus
end
