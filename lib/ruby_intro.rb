# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  @s = 0
  for i in arr
    @s += i
  end
  return @s
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  arr = arr.sort
  
  return arr[-1] + arr[-2]
end

def sum_to_n? arr, n
  return false if arr.length < 2
  for x in 0..arr.length-1
    for y in x+1..arr.length-1
      if arr[x]+arr[y] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  if s[0].downcase.count("a-z") == 0
    return false
  end
  if s[0].downcase.count("aeiou") == 1
    return false
  end
  return true
end

def binary_multiple_of_4? s
  return true if s == "0"
  if s.length > 2 && s.count("10") == s.length
    return true if s[-1] == "0" and s[-2] == "0"
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if !(isbn.is_a? String) || isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    raise ArgumentError if !(isbn.is_a? String) || isbn.length = 0
    @isbn = isbn
  end
  def price=(price)
    raise ArgumentError if price <= 0
    @price = price
  end
  def price_as_string
    return "$%0.2f" % [@price]
  end
end
