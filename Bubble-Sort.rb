def bubble_sort (list)
    working_list = list
    was_run = false
    
    list.each_index do |index|
        number = working_list[index]
        next_number = working_list[index + 1]
        unless next_number.nil?
            if number > next_number
                number, next_number = next_number, number
                working_list[index] = number
                working_list[index+1] = next_number
                
                was_run = true
            end
        end
    end
    if was_run
        bubble_sort(working_list)
    else
        return working_list
    end
end