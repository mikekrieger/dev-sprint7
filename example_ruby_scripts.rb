class TriangleError < StandardError
end
nil

class PalindromeError < StandardError
end
nil

def is_triangle? args
  raise ArgumentError, "There are not 3 arguments" if args.length != 3
  array = args
  max = array.sort!.pop
  raise TriangleError, "This is not a triangle" unless max <= array[0] + array[1]
  puts "Congratulations, you have found a triangle!"
end
irb(main):077:0> is_triangle? [1,2,3]
Congratulations, you have found a triangle!
=> nil
irb(main):078:0> is_triangle? [1,9,10]
Congratulations, you have found a triangle!
=> nil
irb(main):079:0> is_triangle? [1,2,10]
TriangleError: This is not a triangle
  from (irb):74:in `is_triangle?'
  from (irb):79
  from /usr/local/bin/irb:12:in `<main>'
irb(main):080:0> 


def another_is_triangle_method args
  if args.length != 3
    raise ArgumentError, "There are not 3 arguments"
  end
  array = args
  max = array.sort!.pop
  unless max <= array[0] + array[1]
    raise TriangleError "This is not a triangle"
  else
    puts "Congratulations, you have found a triangle!"
  end
end
nil
irb(main):092:0> another_is_triangle_method [1,9,10]
Congratulations, you have found a triangle!
=> nil
irb(main):093:0> another_is_triangle_method [1,2,10]
NoMethodError: undefined method `TriangleError' for main:Object
  from (irb):87:in `another_is_triangle_method'
  from (irb):93
  from /usr/local/bin/irb:12:in `<main>'
irb(main):094:0> another_is_triangle_method [1,1,1]
Congratulations, you have found a triangle!
=> nil

def reverse_string string
  string.reverse
end
irb(main):100:0> reverse_string [1,2,3,4]
=> [4, 3, 2, 1]


def tedious_reverse_string string
  arr, reverse_arr = [], []
  arr = string.chars.to_a
  arr.length.times do
    reverse_arr << arr.pop
  end
end
nil

def is_palindrome blob
  array = blob.to_s.chars.to_a
  if array.length % 2 == 1
    array.delete_at((array.length - 1 )/ 2)
  end
  left = array.slice(0..(array.length/2 - 1))
  right = array.slice((array.length/2)..-1)
  if left == right.reverse
    puts "Found a palindrome!"
  else
    raise PalindromeError, "Not a Palindrome"
  end
end
nil