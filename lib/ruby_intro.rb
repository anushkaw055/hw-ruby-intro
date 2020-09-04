# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum=0
  arr.each{|x| sum+=x}
  return sum
  
end

def max_2_sum arr
  sum=0
  if arr.length == 0
    sum=0
  elsif arr.length == 1
    sum=arr[0]
  else
    arr = arr.sort { |a,b| b <=> a}
    sum = arr[0] + arr[1]
  end
  return sum
end

def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1
        return false
  end
  (0..arr.length-1).any? do |i| 
    arr[i+1..arr.length].any? { |x| x + arr[i] == n }
  end 
end

# Part 2

def hello(name)
  return "Hello, "+ name
end

def starts_with_consonant? s
  if s.length==0
    return false
  end
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.count('01') != s.size
    return false
  end
  if s[s.size - 1] == '0' && s[s.size - 2] == '0'
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    if isbn.length==0 or price<=0
      raise ArgumentError
    end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    return "$%.2f" % price
  end
end
