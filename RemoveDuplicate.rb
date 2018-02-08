=begin
  Remove duplicates from the array
  I/P = [1,2,4] , [5,3,4]
  O/P = [1,2,4], [3,5]
=end


a=[1,2,4]
b=[5,3,4]

a.sort!
b.sort!

a.each do |x|
  if b.include? x
    b.delete(x)
  end
end

puts a
puts
puts b
