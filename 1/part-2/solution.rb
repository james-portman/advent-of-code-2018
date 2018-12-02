frequency = 0
frequencies = [ frequency ]

while true do
  File.readlines('input').each do |line|
    frequency += Integer(line)


    if frequencies.include? frequency
      puts "Got #{frequency} twice"
      exit
    end

    frequencies << frequency
  end
end

puts frequencies
