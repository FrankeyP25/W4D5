

def sub_sum(list)
    subs = []
    (0...list.length).each do |i|
        subs << [list[i]]
        (i+1...list.length).each do |j|
            subs << list[i..j]
        end
    end
subs.map(&:sum).max
end

def sub_sum2(list)
    max = 0
    (0...list.length).each do |i|
        p num = list[i...list.length]
        puts
        # sum = num.sum
        # single_el = list[i]
        # if sum > single_el
        #     max = sum
        # else  
        #     max = single_el
        # end
    end

end


list1 = [5, 3, -7] # 8
p sub_sum2(list1)


# list2 = [2, 3, -6, 7, -6, 7] #8
# p sub_sum(list2)

# list3 = [-5, -1, -3] #-1
# p sub_sum(list3) 