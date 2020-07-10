def swap_values_in_list (value1, value2, target_list, index)
    # Complicated workaround needed because Ruby sucks
    value1, value2 = value2, value1
    target_list[index] = value1
    target_list[index+1] = value2
end

def sort_one_number (list)
    working_list = list
    was_run = false
    
    list.each_index do |index|
        number = working_list[index]
        next_number = working_list[index + 1]

        if next_number && number > next_number
            swap_values_in_list(number, next_number, working_list, index)   
            was_run = true
        end
    end

    return working_list, was_run
end

def bubble_sort (list)
    list, was_sorted = sort_one_number(list)

    was_sorted ? bubble_sort(list) : (return list)
end