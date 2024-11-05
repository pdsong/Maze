require 'grid'
require 'binary_tree'

puts "111111111"
grid=Grid.new(40,40)
BinaryTree.on(grid)

puts grid
# ruby -I. xxx.ruby  以指示 Ruby 在当前目录中查找依赖项
