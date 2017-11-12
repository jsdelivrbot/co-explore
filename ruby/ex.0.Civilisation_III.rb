=begin
Fixing the bug of when the continent would border the the edge of the world.
The method should return "ZERO" when the values for x and/or zero exceed the borders of the world.
These are just to make the map easier for me to read.
"M" is visually more dense than "o".

Yuliya
=end

M = 'land'
o = 'water'
world = [["o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o"],
        ["o", "o", "o", "o", "M", "M", "o", "o", "o", "o", "o"],
        ["o", "o", "o", "o", "o", "o", "o", "o", "M", "M", "o"],
        ["o", "o", "o", "M", "o", "o", "o", "o", "o", "M", "o"],
        ["o", "o", "o", "M", "o", "M", "M", "o", "o", "o", "o"],
        ["o", "o", "o", "o", "M", "M", "M", "M", "o", "o", "o"],
        ["o", "o", "o", "M", "M", "M", "M", "M", "M", "M", "o"],
        ["o", "o", "o", "M", "M", "o", "M", "M", "M", "o", "o"],
        ["o", "o", "o", "o", "o", "o", "M", "M", "o", "o", "o"],
        ["o", "M", "o", "o", "o", "M", "o", "o", "o", "o", "o"],
        ["o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o"]]

# world = [%w{ o o o o o o o o o o o},
#         %w{ o o o o M M o o o o o},
#         %w{ o o o o o o o o M M o},
#         %w{ o o o M o o o o o M o},
#         %w{ o o o M o M M o o o o},
#         %w{ o o o o M M M M o o o},
#         %w{ o o o M M M M M M M o},
#         %w{ o o o M M o M M M o o},
#         %w{ o o o o o o M M o o o},
#         %w{ o M o o o M o o o o o},
#         %w{ o o o o o o o o o o o},]

def continent_size world, x, y
  if world[y][x] != 'land' || world[y][x] <= 0 || world[y][x] >= 10
    return 0
  end

  #so first we count this tile...
  size = 1
  world[y][x] = 'counted land'
  #then we wount all the neighbouring eight tiles
  #(and , of course, their neighbours by the way of recursion)

  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x  , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end
puts continent_size(world, 5, 5)
