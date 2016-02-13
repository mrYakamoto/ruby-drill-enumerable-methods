# TODO: Return the odd numbers from a list of integers.
#       Use #select.
def odd_integers(array)
  array.select{|element|element % 2 != 0}
end

# TODO: Return the first number from an Array that is less than a particular number - 'limit.'
#       Use #find.
def first_under(array, limit)
  array.find{ |element| element < limit }
end

# TODO: Take an Array of Strings and return a new Array with an exclamation point appended to each String.
#       Use #map.
def add_bang(array)
  array.map!{|x|x.concat('!')}
end

# TODO: Calculate the sum of an Array of numbers.
#       Use #reduce.
def sum(array)
  array.reduce(:+)
end

# TODO: Reorganize an Array of the elements into groups of 3, and then sort each group alphabetically.
#       Use #each_slice in combination with other enumerable methods.
def sorted_triples(array)
  sliced_arr = []
  output = []
  array.each_slice(3){|a| sliced_arr.push(a)}
  sliced_arr.each{|element| output << element.sort{|b,c| b <=> c }}
  output
  # i = 0
  # while i < output.length
  #   output[i] = output[i].sort{|a,b| a <=> b }
  #   i += 1
  # end
  # output
end

# TODO: Returns an array of elements at indices 1, 3, 5, 7, etc.
#       Use #each_with_index.
def odd_indexed_elements(array)
  odd_index_items = []
  array.each_with_index{ |obj, i|
    if i % 2 != 0
      odd_index_items << obj
    end
    }
  odd_index_items
end
