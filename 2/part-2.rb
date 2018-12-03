def count_diff(a, b)
  diffs = 0
  overlap = ""
  a = a.split('')
  b = b.split('')
  a.each_with_index do |achar, index|
    if achar != b[index]
      diffs += 1
    else
      overlap += achar
    end
    if diffs > 1
      return diffs
    end
  end
  return diffs, overlap
end

lines = []

File.readlines('input').each do |line|
  line = line.strip
  lines << line
end


lines.each_with_index do |line, index|
  lines.each_with_index do |line2, index2|
    if index == index2
      next
    end

    diffs, overlap = count_diff(line, line2)
    if diffs == 1
      puts line
      puts line2
      puts overlap
      puts
    end

  end
end

