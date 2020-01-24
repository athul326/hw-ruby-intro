# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sumfinal = 0
  for x in arr do
    sumfinal = sumfinal + x
  end
  return sumfinal
end

def max_2_sum arr
  # YOUR CODE HERE
  sumfinal = 0
  max1 = 0
  max2 = 0
  for x in arr do
    if x >= max1
      max2 = max1
      max1 = x
    elsif max2 == 0
      max2 = x
    end
  end
  sumfinal = max1+max2
  return sumfinal
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for x in arr do
    for y in arr do
      if y!=x and x+y == n
        return true
      end
    end
  end
  return false
  
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowels = ['a','e','i','o','u']
  str = s.downcase
  if s.length == 0
    return false
  end
  if str[0] !~ /[[:alpha:]]/
    return false
  end
  if vowels.include? str[0]
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if s =~ /[^01]/ or s.length ==0
    return false
  else
    x = s.to_i(2)
    if x%4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    raise ArgumentError.new("Price cannot be zero or negative") if price <= 0
    raise ArgumentError.new("ISBN cannot be empty") if isbn.length == 0
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
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    x = '%.2f' % @price
    return "$"+x
  end
end
