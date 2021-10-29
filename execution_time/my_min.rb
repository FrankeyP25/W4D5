# my_min
# Given a list of integers find the smallest number in the list.

# Example:

    list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
    # my_min(list)  # =>  -5

# Phase I
# First, write a function that compares each element to every other element of the list.
#  Return the element if all other elements in the array are larger.
# What is the time complexity for this function?


def my_min(list)
    min = 0
    list.each do |el1|
        list.each do |el2|
            min = el2 if el2 < min
        end
    end
    min
end

# p my_min(list)

# Phase II
# Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?

def my_min2(list)
    min = 0
    list.each do |el|
        min = el if el < min
    end
    min
    # list.inject { |min, el| el < min ? el : min }

end
p my_min2(list)