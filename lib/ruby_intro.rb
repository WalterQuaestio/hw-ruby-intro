# When done, submit this entire file to the autograder.

"""
Name : Thanakorn Thanakarn 
ID : 651301023
"""

# Part 1

def sum arr

  unless arr.all? { |elem| elem.is_a?(Integer) }
    puts "Please enter an array of numbers."
    return
  end
  ()
  
  if arr.empty?
    sum = 0
  else
    i = 0
    sum = 0

    while i <= (arr.length - 1) do
      sum += arr[i]
      i += 1
    end
  end
  sum
end

def max_2_sum arr
  unless arr.all? {|elem| elem.is_a?(Integer)}
    puts "Please enter an arrya of number."
  end
  
  if arr.empty? 
    sum = 0
    
  elsif arr.length == 1 
    sum = arr[0]
    
  else
    sorted_arr = arr.sort.reverse
    sum = sorted_arr[0] + sorted_arr[1]
    
  end
  
  sum
end

def sum_to_n? arr, n
  pairs = arr.combination(2)

  pairs.any? { |pair| pair.sum == n }
end









# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? (str)
  /^[b-df-hj-np-tv-z]/i.match?(str)
end

def binary_multiple_of_4? s
  /^[01]*00$/.match?(str)
end









# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'Invalid ISBN number' if isbn.empty?
    raise ArgumentError, 'Price must be greater than zero' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price)
  end
end
