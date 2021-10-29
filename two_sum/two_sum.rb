def bad_two_sum?(arr, target_sum)  # => O(n^2)
    arr.each do |el1|
        arr.each do |el2|
            if el1 != el2 && el1 + el2 == target_sum 
               return true
            end
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# puts
# p bad_two_sum?(arr, 10) # => should be false


def okay_two_sum?(arr, target_sum)
    return arr if arr.length < 2

    mid = arr.length / 2
    left = arr[0...mid]
    right = arr[mid..-1]
    
    okay_two_sum?(left, target_sum) + okay_two_sum?(right, target_sum) == target_sum
end

arr = [0, 1, 5, 7]  # [1, 6, 12, 5, 7, 8] => [1, 5, 6, 7, 8, 12]
arr2 = [-2, -1, 0, 1]

p okay_two_sum?(arr, 6)
