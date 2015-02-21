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
  puts "Block #{index}:"
  # Because split removes the /**, put it back
  puts "/**" + block
end
