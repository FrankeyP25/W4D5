
def first_anagram?(str1, str2)
    anagrams = []
    chars = str1.split("")
    perms = chars.permutation.to_a
    perms.map(&:join).include?(str2)
end


def second_anagram?(str1, str2) #O(n^2)
    chars = str2.split("")
    str1.each_char do |char|       # n
        i = chars.find_index(char) # m
        if !i 
            return false
        else
            chars.delete_at(i)    # m
        end
    end
chars.length == 0
end

def third_anagram?(str1, str2) # O(nlogn)
    str1.split("").sort == str2.split("").sort
end

def fourth_anagram?(str1, str2)
    hash1 = {}
    hash2 = Hash.new(0)
    str1.each_char { |char| hash1[char] += 1 }
    str2.each_char { |char| hash2[char] += 1 }
#     str1.each_char do |char|
#         hash1[char] = true if str2.include?(char)
#     end
# hash1.keys.length == str2.length
end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true


