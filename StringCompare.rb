=begin
The input is a string. Determine if the rule is met: the first lowercase letter that appears after the uppercase letter matches 
the uppercase letter that is closest to it.
For example, "BCcbAa" is matched, "BCbcAa" does not match.
=end

def string_compare(char_array)
  stack = []
  char_array.each do |char|
    if char == char.upcase
      stack.push(char)
    else
      if stack.last.downcase == char
        stack.pop
      else
        return false
      end
    end
  end
  return true
end

print "Enter Input : "
input = gets.chomp
char_array=input.scan /\w/
puts string_compare(char_array)
