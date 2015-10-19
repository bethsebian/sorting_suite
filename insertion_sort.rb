class InsertionSort
  attr_reader :unsorted, :sorted

  def initialize(unsorted,sorted=[])
    @unsorted = unsorted
    @sorted = sorted
  end

  def unsorted
    @unsorted
  end

  def sorted
    @sorted
  end

  def front
    sorted.insert(0,unsorted[0])
  end

  def find_less_than(sorted_index,unsorted_index)
    (sorted[sorted_index] <=> unsorted[unsorted_index]) == 1
  end

  def place(sorted_index,unsorted_index)
    sorted.insert(sorted_index,unsorted[unsorted_index])
    unsorted.shift
  end

  def find_less_than_and_place(sorted_index,unsorted_index)
    if (sorted[sorted_index] <=> unsorted[unsorted_index]) == 1
      sorted.insert(sorted_index,unsorted[unsorted_index])
      unsorted.shift
    end
  end

  def sort
    if unsorted.length == 0
      unsorted
    elsif unsorted.length == 1
      sorted_active = front #why does this break if I change variable name from sorted_active to sorted
      sorted_active
    elsif unsorted.length == 2
      if (unsorted[1] <=> unsorted[0]) == 1
        unsorted
      else
        place(0,0)
        place(0,0)
        @sorted
      end
    elsif unsorted.length == 3
      sorted.insert(0,unsorted[0])
      unsorted.shift
        if find_less_than_and_place(0,0)
        else place(1,0)
        if find_less_than_and_place(0,0)
        elsif find_less_than_and_place(1,0)
        else place(2,0)
        end
        @sorted
      end

  # This needs some work...pick up ones unsorted.length == 3 passes 
  # elsif unsorted.length == 4
  #     sorted.insert(0,unsorted[0])
  #     unsorted.shift
  #     # place(0,0) #3721    3     721
  #     if (sorted[0] <=> unsorted[0]) == 1
  #       sorted.insert(0,unsorted[0])
  #       unsorted.shift
  #     else place(1,0) # 37 21
  #
  #     if find_less_than_and_place(0,0) #237 1
  #     elsif find_less_than_and_place(1,0)
  #     else place(2,0)
  #
  #     if find_less_than_and_place(0,0)
  #     elsif find_less_than_and_place(1,0)
  #     elsif find_less_than_and_place(2,0)
  #     else place(3,0)
  #   end
  #     end
    end
  end
end
