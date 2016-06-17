# 1.1 Implement an algorithm to determine if a string has all unique characters.  What if you cannot use additional data structures?
#Test cases => "Lemon" = true, "Happy" = false, "Loly" = false

def unique?(string)
  arr = string.split('')
  my_hash = Hash.new
  
  arr.each do |char|
    if my_hash[char] != nil
      my_hash[char] += 1
    else
      my_hash[char] = 1
    end
  end
  
  my_hash.each do |key, value|
    if my_hash[key] > 1
      return false
    end
  end
  return true
end

# 1.2 Implement a function void reverse(char* str) in C or C++ which reverses a null-terminated string.
# REVISED question for Ruby: reverse string without using the reverse function
#Test case: "Hello" = "olleH"

def reverse(string)
  if string == String #check edge case to make sure input is a string
  	arr = string.split('')
  	counter = 1
  	new_str = []
  
  	while counter <= arr.length do
    	new_str << arr[-counter]
    	counter += 1
  	end
  
  	return new_str.join('')
  	
  else
  	return "not a string"
  end
end
