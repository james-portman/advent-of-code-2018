require 'set'
# how many had double or triple copies of letters in
doubles = 0
triples = 0

File.readlines('input').each do |line|
  line = line.strip
  chars = {}

  puts line
  # count each character in the line
  line.each_char do |char|
    if not chars.include? char
      chars[char] = 0
    end
    chars[char] += 1
  end

  got_double = false
  got_triple = false
  chars.each do |char, count|
    if count == 2
      got_double = true
    end
    if count == 3
      got_triple = true
    end
  end
  if got_double
    doubles += 1
  end
  if got_triple
    triples += 1
  end

end

puts doubles * triples
