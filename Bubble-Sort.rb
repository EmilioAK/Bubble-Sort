def sort_one_number (list)
    working_list = list.clone

    list.each_index do |index|
        if working_list[index + 1] && working_list[index] > working_list[index + 1]
            working_list[index], working_list[index + 1] = working_list[index + 1], working_list[index] # Can't use the variables here for some reason
        end
    end
    
    return working_list, working_list == list
end

def bubble_sort (list)
    list, was_sorted = sort_one_number(list)

    was_sorted ? (return list) : bubble_sort(list)
end
