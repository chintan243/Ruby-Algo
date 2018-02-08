
def is_palindrome(char_array)
 starts =0
 ends =char_array.length-1
 while starts<ends
  if char_array[starts] != char_array[ends]
    return false
  end
  starts+=1
  ends-=1
 end
 return true
end

print "Enter Input : "
input = gets.chomp
input.downcase!
char_array=input.scan /\w/
puts is_palindrome(char_array)
