require 'pry'

def map(array)
  counter = 0
  new_array = []
  while counter < array.length do 
    new_array.push(yield(array[counter]))
    counter += 1 
  end
  new_array 
end



def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    binding.pry
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end



# def reduce(array, starting_point=0)
#   counter = 0 
#   total = starting_point 
#   while counter < array.length do
#     val = array[counter]
#     # binding.pry
    
#     if val.is_a?(Integer) 
#       total += array[counter]
#     elsif val # implicit for truthiness
#       total == true
#     elsif val == false # any false values always => false 
#       total = false
#     elsif !val 
#       total = false   
#     else total = true # might wanna switch this and previous 
#     end 
#     counter += 1 
#   end 
#   total 
# end 



