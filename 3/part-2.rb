
def main
  grid = Array.new(1001) { Array.new(1001, 0) }

  File.readlines('input').each do |line|
    line = line.strip

    x_coord, y_coord, width, height = processline(line)
    x_end = x_coord + width - 1
    y_end = y_coord + height - 1
    for x in x_coord..x_end
      for y in y_coord..y_end
        grid[x][y] += 1
      end
    end
  end

  File.readlines('input').each do |line|
    line = line.strip

    x_coord, y_coord, width, height = processline(line)
    x_end = x_coord + width - 1
    y_end = y_coord + height - 1
    failed = false
    for x in x_coord..x_end
      for y in y_coord..y_end
        if grid[x][y] != 1
          failed = true
          break
        end
      end
    end
    if not failed
      print line
    end
  end


end


def processline(line)
  parts = line.split(' ')

  coords = parts[2].split(':')[0].split(',')
  x_coord = coords[0]
  y_coord = coords[1]

  size = parts[3].split('x')
  width = size[0]
  height = size[1]

  return Integer(x_coord), Integer(y_coord), Integer(width), Integer(height)

end

main
