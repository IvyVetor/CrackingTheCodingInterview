# 1.1 Implement an algorithm to determine if a string has all unique characters.  What if you cannot use additional data structures?

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
