class InsertionSort
  attr_reader :unsorted, :sorted

  def initialize(unsorted,sorted=[])
    @unsorted = unsorted
    @sorted = sorted
    @unsorted_length = unsorted.length
  end

  def unsorted
    @unsorted
  end

  def sorted
    @sorted
  end

  def unsorted_length
    @unsorted_length
  end

  def kick_it_off
    sorted.insert(0,unsorted[0])
  end

  def sort
    if unsorted.length == 0
      unsorted
    elsif unsorted.length == 1
      sorted_active = sorted.insert(0,unsorted[0]) #why does this break if I change variable name from sorted_active to sorted
      sorted_active
    else
      kick_it_off
      unsorted.shift
      if (sorted[0] <=> unsorted[0]) == -1
        sorted.insert(1,unsorted[0])
      else
        sorted.insert(0,unsorted[0])
      end
      @sorted
    end
  end

  def sort23
    kick_it_off
    unsorted.shift
    if (sorted[0] <=> unsorted[0]) == 1
      sorted.insert(0,unsorted[0])
      unsorted.shift
    else
      sorted.insert(1,unsorted[0])
      unsorted.shift
    end

    if unsorted_length >=3
      if (sorted[0] <=> unsorted[0]) == 1
        sorted.insert(0,unsorted[0])
        unsorted.shift
      else
        if (sorted[1] <=> unsorted[0]) == 1
          sorted.insert(1,unsorted[0])
          unsorted.shift
        else
          sorted.insert(2,unsorted[0])
          unsorted.shift
        end
      end
      if unsorted_length >= 4
        if (sorted[0] <=> unsorted[0]) == 1
          sorted.insert(0,unsorted[0])
          unsorted.shift
        elsif (sorted[1] <=> unsorted[0]) == 1
          sorted.insert(1,unsorted[0])
          unsorted.shift
        elsif
          (sorted[2] <=> unsorted[0]) == 1
          sorted.insert(2,unsorted[0])
          unsorted.shift
        else
          sorted.insert(3,unsorted[0])
        end
      end
    end
    @sorted
  end
end
