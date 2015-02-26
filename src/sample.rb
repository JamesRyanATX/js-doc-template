require 'json'

list_of_things=File.read('sample-1.js')

# puts list_of_things

blocks = list_of_things.split('/**')

# Only keep blocks that contain code
blocks = blocks.select do |block|
  block.include?(';')
end

# Print out the blocks, just to show that
# we can. In real life we would begin
# converting the blocks to HTML here by
# parsing the contents of each block to
# see what type of code it was and how
# we should format it.

blocks.each_with_index do |block, index|
  #puts "Block #{index}:"
  # Because split removes the /**, put it back
  #puts "/**" + block
end

split_blocks=blocks.map do |piece|
  piece.split('*/')
end

puts"<html>"
puts"<body>"
puts"<h1>Documentation</h1>"
puts"<p>"

j=0
while j<split_blocks.length do
  puts split_blocks[j][1]
  puts "<p>"
  puts split_blocks[j][0]
  puts "<p>"
  j+=1
end


