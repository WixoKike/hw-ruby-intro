# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  if arr.empty?
    return 0
  else
    arr.each do |i|
      total += i
    end
    return total
  end
end

def max_2_sum arr
  total = 0
  if arr.empty?
    return 0
  elsif arr.length > 1
    arr.max(2).each do |i|
      total += i
    end
    return total
  else
    return arr[0]
  end
end

def sum_to_n? arr, n
  bool = false
  if !arr.empty?
    arr.permutation(2).to_a.each do |i|
      total = 0
      i.each do |j|
        total += j
      end
      if total.eql?(n)
        bool = true
        break
      end
    end
  end
  return bool
end

# Part 2

def hello(name)
  str = "Hello, "
  return str + name
end

def starts_with_consonant? s
  vowels = ['a', 'e', 'i', 'o', 'u']
  bool = false
  if !s.empty?
    if (s.split('').first =~ /[[:alpha:]]/).eql?(0)
      vowels.each do |i|
        if !s.split('').first.downcase.eql?(i)
          bool = true
        else
          bool = false
          break
        end
      end
    end
  end
  return bool
end

def binary_multiple_of_4? s
  bool = false
  if !s.empty?
    if (s =~ /[[:digit:]]/).eql?(0)
      if (s.to_i(2)%4).eql?(0)
        bool = true
      end
    end
  end
  return bool
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def isbn
    return @isbn
  end

  def isbn= value
    @isbn = value
  end

  def price
    return @price
  end

  def price= value
    @price = value
  end

  def initialize i,p
    if !i.empty?
      @isbn= i
    else
      raise ArgumentError
    end
    if p > 0.0
      @price= p
    else
      raise ArgumentError
    end
  end

  def price_as_string
    return format("$%.2f", price)
  end
end
