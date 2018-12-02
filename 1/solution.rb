frequency = 0
File.readlines('input').each do |line|
  action = line[0]
  amount = Integer(line[1 .. line.length-1])
  case action
  when "+"
    frequency += amount
  when "-"
    frequency -= amount
  end
end
print frequency
