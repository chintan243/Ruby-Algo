=begin
Sample Input
Input #1 : We promptly judged antique ivory buckles for the next prize    
Input #2 : We promptly judged antique ivory buckles for the prize    

Sample Output
Output #1 : Ispangram
Output #2 : false
=end


def is_Panagram(str)
  "a".upto("z") do |char|
    if str.include? char
      next
    else
      return false
    end
  end
  return "Is Panagram"
end
str = "We promptly judged antique ivory buckles for the next prize   ".delete(' ')
str.downcase!
puts is_Panagram(str)
