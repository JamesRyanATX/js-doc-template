require 'json'

original_file=File.read('sample-1.js')
split_form=original_file.split(" ")
puts split_form
x=1
while x<=split_form.length do
  if ("/**"==split_form[x]) 
    y=x+1
    while y<=split_form.length do     
      if "}"==split_form[y]
        block_one=split_form[x,y]
      else
        y+=1
      end
    end
  else
    x+=1
  end
end
x=1
while x<=split_form.length do
  if ("/**"==split_form[x]) 
    y=x+1
    while y<=split_form.length do     
      if ";"==split_form[y]
        variable=split_form[x,y]
      else
        y+=1
      end
    end
  else
    x+=1
  end
end


puts block_one
