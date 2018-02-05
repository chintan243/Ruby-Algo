=begin
I/P = "Ratatu!"
O/P = a
      t 
=end


class Code
    def find_duplicate(string)
        #Converting string into stream of Characters
        characters = string.each_char
        hash_of_character = Hash.new(0)
        characters.each do |k,v|
            count= hash_of_character[k]
            hash_of_character[k] = count +1
        end
        dup_char = []    
        for k,v in  hash_of_character
            if v>1
                dup_char.push(k)
            end
        end
        return dup_char
    end
end

go_and = Code.new
duplicate_char = go_and.find_duplicate("Ratatu!")
puts duplicate_char
