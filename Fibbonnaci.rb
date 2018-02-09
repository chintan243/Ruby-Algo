# Ouput : 8
def fib_number(n)
  return n if (0..1).include? n
  (fib_number(n-1)+fib_number(n-2))
end

puts fib_number(6)


# get series [1, 1, 2, 3, 5, 8]
def compute(n)
    a = []
    a.push(1)
    a.push(1)
    n -=1
    first = 1
    second = 1
    n.times do
      third = first + second
      first = second
      second = third
      a.push(third)
    end
    #first
    a
end
print compute(5)
