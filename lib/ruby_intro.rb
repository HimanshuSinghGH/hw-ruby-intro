# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0 
  for i in arr
    sum = sum + i 
  end
  return sum
end


def max_2_sum arr
  # YOUR CODE HERE
  len = arr.length()
  if(len == 0)
    return 0
  end
  if(len == 1)
    return arr[0]
  end
  arr = arr.sort
  return arr[len-1] + arr[len-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  sum2 = {}
  len = arr.length()
  if(len == 1 )
    return false 
  end 
  for i in 0..len-1
    if(sum2[n-arr[i]] != nil)
      return true
    else
      sum2[arr[i]] = i 
    end
  end
  # puts sum2
  return false 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.length() == 0 )
    return false
  end
  if(s =~ /\A[^aeiouAEIOU\W](\w*)/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s=="0")
    return true
  end
  if(s =~ /\A[01]*(00)\z/)
    return true
  else
    return false 
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
		@isbn=isbn
		@price=price
		# exeption 
		if  @price <= 0  || @isbn.empty?
			raise ArgumentError
		end
	end
	
	attr_accessor :price
	attr_accessor :isbn
	

	def price_as_string
		"$#{'%.2f' %  @price}"
	end

  
end
