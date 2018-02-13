=begin
 -> Validate the binary tree is Binary Search Tree
               25
             /    \
           15      30
          / \      /  \
         10  26   27  33
         
    Ouput:- false
    because left side tree contains 26 which is greater than 25 (left> 25) so output is false
=end

class Node
  attr_accessor :data,:left , :right
  def initialize(val)
    @data= val
    @left= nil
    @right= nil
  end
end

class BinarySearch
  def isValidate(root)
    # Here we consider min node value can't be less than 0
    min = -1
    # Here we consider max node value can't be greater than 100000000
    max =100000000
    helper(root,min,max)
  end
  
  def helper(root,min,max)
    return true if root== nil
    return false if (root.data < min || root.data > max)
    return (helper(root.left,min,root.data) && helper(root.right,root.data+1,max))
  end
end

class Main
  root = Node.new(25)
  root.left = Node.new(15)
  root.left.left = Node.new(10)
  root.left.right = Node.new(24)
  
  root.right = Node.new(30)
  root.right.left = Node.new(27)
  root.right.right = Node.new(33)
  
  bst = BinarySearch.new
  res = bst.isValidate(root)
  puts res
end


