=begin
Str1 = "A Statement is a Statement", Str2 = "Statement a" 
Output: "A is Statement"
=end

class Code
    def removeElementFrom_str2_to_str1(str1,str2)
        string1 = str1.split(" ")
        string2 = str2.split(" ")
        
        string2.each do|word|
            if string1.include? word
                index= string1.index(word)
                string1.delete_at(index)
            end
        end
        return string1.join(" ")
    end
end

do_op = Code.new
result = do_op.removeElementFrom_str2_to_str1( "A Statement is a Statement","Statement a")
puts result
