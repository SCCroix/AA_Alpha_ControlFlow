# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  new_str = ""
  str.each_char do |char|
    if char == char.upcase
      new_str += char
    end
  end
  return new_str
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  new_str = ""
  if str.length.even?
    new_str = str[(str.length / 2) - 1, 2]
  else
    new_str = str[str.length / 2]
  end
  return new_str
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  count = 0
  VOWELS.each do |chr|
    if str.include?(chr)
      count += 1
    end
  end
  return count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  fact = 1
  while num > 0
    fact = fact * num
    num -= 1
  end
  return fact
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  str = ""
  arr.each_with_index do |el,index|
    str += el
    if index < arr.length - 1
      str += separator
    end
  end
  return str
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  new_str = ""
  char = str.chars
  char.each_with_index do |char, index|
    if index.even?
      new_str += char.downcase
    else
      new_str += char.upcase
    end
  end
  return new_str
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  words = str.split
  words.map do |e|
    if e.length >= 5
      e.reverse!
    end
  end
  return words.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  arr = []
  (1..n).each do |num|
    if num % 15 == 0
      arr << "fizzbuzz"
    elsif num % 5 == 0
      arr << "buzz"
    elsif num % 3 == 0
      arr << "fizz"
    else
      arr << num
    end
  end
  return arr
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  return arr.reverse
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  if num == 1
    return false
  end
  i = 2
  while i < num
    if num % i == 0
      return false
    end
    i += 1
  end
  return true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  arr = []
  (1..num).each do |el|
    if num % el == 0
      arr << el
    end
  end
  return arr

end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  arr = []
  num_factors = factors(num)
  num_factors.each do |factor|
    if prime?(factor)
      arr << factor
    end
  end
  return arr
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  return prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  odd = []
  even = []
  arr.each do |num|
    if num.even?
      even << num
    else
      odd << num
    end
  end
  if even.length == 1
    return even[0]
  else
    return odd[0]
  end
end
