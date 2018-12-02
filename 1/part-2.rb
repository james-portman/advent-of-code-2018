frequency = 0
frequencies = { frequency => true }

while true do
  File.readlines('input').each do |line|
    frequency += Integer(line)

    if frequencies.include? frequency
      puts "Got #{frequency} twice"
      exit
    end

    frequencies[frequency] = true
  end
end

puts frequencies
