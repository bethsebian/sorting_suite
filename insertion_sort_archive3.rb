class InsertionSort
  attr_reader :unsorted, :sorted, :array_length

  def initialize(unsorted,sorted=[])
    @unsorted = unsorted
    @sorted = sorted
    @array_length = unsorted.length
  end

  def move_to_sorted_array_and_remove_from_old_array(new_position)
    sorted.insert(new_position,unsorted[0])
    unsorted.shift
  end

  def sort
    if array_length == 0
      []
    else
      move_to_sorted_array_and_remove_from_old_array(0)

      if array_length >= 2
        if (sorted[0] <=> unsorted[0]) == 1
          move_to_sorted_array_and_remove_from_old_array(0)
        else
          move_to_sorted_array_and_remove_from_old_array(1)
        end
      end

      if array_length >=3
        if (sorted[0] <=> unsorted[0]) == 1
          move_to_sorted_array_and_remove_from_old_array(0)
        elsif (sorted[1] <=> unsorted[0]) == 1
          move_to_sorted_array_and_remove_from_old_array(1)
        else
          move_to_sorted_array_and_remove_from_old_array(2)
        end
      end

      if array_length >= 4
        if
          (sorted[0] <=> unsorted[0]) == 1
            move_to_sorted_array_and_remove_from_old_array(0)
        elsif
          (sorted[1] <=> unsorted[0]) == 1
          move_to_sorted_array_and_remove_from_old_array(1)
        elsif
          (sorted[2] <=> unsorted[0]) == 1
          move_to_sorted_array_and_remove_from_old_array(2)
        else
          (sorted[3] <=> unsorted[0]) == 1
          move_to_sorted_array_and_remove_from_old_array(3)
        end
      end
      @sorted
    end
  end
end
