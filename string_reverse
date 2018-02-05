=begin
I/p: "Hello Chintan!"
O/p: "Chintan! Hello"
=end


class Code
    def reverse_string(string)
        str = string.split(" ")
        array_string = Array.new
        str.each do |word| 
            array_string.push(word)
        end
        item = array_string.length - 1
        reversed_string=""
        for item in item.downto(0)
             reversed_string+=array_string[item]+" "
        end
        return reversed_string
    end
end

reverse = Code.new
reversed_string = reverse.reverse_string("Hello Chintan!")
puts reversed_string
