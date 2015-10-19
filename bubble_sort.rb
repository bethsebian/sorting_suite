class BubbleSort
  attr_accessor :array, :length

  def initialize(array)
    @array = array
    @length = array.length
    @comparison_reps = length - 1
  end

  def id_and_switch(current,cnext)
    if (array[current] <=> array[cnext]) == 1
      array[current],array[cnext] = array[cnext],array[current]
    end
  end

  def sort
    @comparison_reps.times do
      length.times do |i|
        id_and_switch(i,i+1)
      end
    end
    @array
  end
end

# Note: to pass test_it_sorts_strings_and_integers, add something like this...
#
# array = [1, 'b', 'a', 'c', 'd', 2, 4, 3]
# strings = []
# numbers = []
# array.each do |element|
#   if element.is_a? String
#     strings << element
#   else
#     numbers << element
#   end
# end
# sorted_array = strings.sort + numbers.sort
# sorted_array # ['a', 'b', 'c', 'd', 1, 2, 3, 4]
