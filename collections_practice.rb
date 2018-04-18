def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort{ |left, right| right <=> left }
end

def sort_array_char_count(array)
  array.sort{ |left, right| left.length <=> right.length }
end

def swap_elements(array)
  # Insert the 3rd element (index 2) into the second position (index 1)
  # and delete the extra element now at the fourth position (index 3)
  array.insert(1, array[2]).delete_at(3)
  array
  ## Other method:
  ## array[1], array[2] = array[2], array[1]
end

def swap_elements_from_to(array, index, destination_index)
  element_to_move = array[index]
  array.delete_at(index) # delete the element at its former position
  array.insert(destination_index, element_to_move) # reinsert it at the destination index
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array_of_strings)
  # Long method:
  # array_of_strings.collect do |string|
  #   string_to_array = string.split(//)
  #   string_to_array[2] = "$"
  #   string_to_array.join
  # end
  
  # Short method:
  array_of_strings.each{ |string| string[2] = "$" }
end

def find_a(array_of_strings)
  array_of_strings.select{ |string| string.downcase.start_with?("a") }
end

def sum_array(array_of_numbers)
  array_of_numbers.inject{ |sum, number| sum += number }
  
  # Short
  # array_of_numbers.inject(:+)
end

def add_s(words)
  # Add s to each word unless second word in array.
  words.each_with_index.collect do |word, index|
    word[index] == word[1] ? word : word << "s"
  end
end


