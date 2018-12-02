frequency = 0
File.readlines('input').each do |line|
  frequency += Integer(line)
end
print frequency
