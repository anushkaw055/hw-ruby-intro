# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  arr.max(2).reduce(0,:+)
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
  a="Hello, "
  a << name
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
  attr_accessor:isbn
  attr_accessor:price
  def initialize(isbn,price)
    raise ArgumentError,
      "Bad arguments" if isbn.empty? or price <= 0
    @isbn =isbn
    @price = price
  end
  def price_as_string
    sprintf("$%2.2f",@price)
  end
end
