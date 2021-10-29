

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
    max = list[0]  # 
    cur = 0
    

    (0...list.length - 1).each do |i|
        if list[i] > list[i] + list[i+1]
          cur  list[i]
        else
            cur = list[i] + list[i+1]
        end

        if cur > max
            max = cur
        end

        
    end
    max
end


# list1 = [5, 3, -7] # 8
# p sub_sum2(list1)

# puts
# list2 = [2, 3, -6, 7, -6, 7] #8
# p sub_sum2(list2)
# puts
list3 = [-5, -1, -3] #-1
p sub_sum2(list3) 