# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty?
  arr.sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.empty? 
  return arr[0] if arr.length == 1 
  arr.sort.reverse[0] + arr.sort.reverse[1]
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  return false if arr.empty? 
  arr.combination(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  result = "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return false if s.empty?
  s[0].match?(/[a-zA-Z]/) && !s[0].match?(/[AEIOUaeiou]/)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return false if s.empty?
  return false unless s.match?(/^[01]+$/)
  decimal = s.to_i(2)
  decimal % 4 == 0
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn, :price

  def price_as_string
    format("$%.2f", @price)
  end
end
