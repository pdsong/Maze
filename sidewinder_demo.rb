require 'grid'
require 'Sidewinder'

grid=Grid.new(4,4)
Siderwinder.on(grid)
img=grid.to_png
img.save "mm.png"
puts grid
