gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_sorts_an_array_with_one_element
    bubblesort = BubbleSort.new([1])
    assert_equal [1], bubblesort.sort
  end

  def test_it_sorts_a_different_array_with_one_number_element
    bubblesort = BubbleSort.new([2])
    assert_equal [2], bubblesort.sort
  end

  def test_it_sorts_an_empty_array
    bubblesort = BubbleSort.new([])
    assert_equal [], bubblesort.sort
  end

  def test_it_sorts_an_ordered_array_with_two_number_elements
    bubblesort = BubbleSort.new([1,2])
    assert_equal [1,2], bubblesort.sort
  end

  def test_it_sorts_an_unordered_array_with_two_number_elements
    bubblesort = BubbleSort.new([2,1])
    assert_equal [1,2], bubblesort.sort
  end

  def test_it_sorts_a_different_unordered_array_with_two_number_elements
    bubblesort = BubbleSort.new([3,2])
    assert_equal [2,3], bubblesort.sort
  end

  def test_it_sorts_an_unordered_array_with_two_letters_elements
    bubblesort = BubbleSort.new(["f","c"])
    assert_equal ["c","f"], bubblesort.sort
  end

  def test_it_sorts_an_unordered_array_with_two_letters_elements
    bubblesort = BubbleSort.new(["f","c"])
    assert_equal ["c","f"], bubblesort.sort
  end

  def test_it_sorts_an_ordered_array_with_three_elements
    bubblesort = BubbleSort.new([4,5,6])
    assert_equal [4,5,6], bubblesort.sort
  end

  def test_it_sorts_a_1_3_2_unordered_array_with_three_elements
    bubblesort = BubbleSort.new([1,5,4])
    assert_equal [1,4,5], bubblesort.sort
  end

  def test_it_sorts_a_2_1_3_unordered_array_with_three_elements
    bubblesort = BubbleSort.new([4,1,5])
    assert_equal [1,4,5], bubblesort.sort
  end

  def test_it_sorts_a_3_2_1_unordered_array_with_three_elements
    bubblesort = BubbleSort.new([5,4,1])
    assert_equal [1,4,5], bubblesort.sort
  end

  def test_it_sorts_a_1_2_4_3_unordered_array_with_four_elements
    bubblesort = BubbleSort.new([5,7,10,8])
    assert_equal [5,7,8,10], bubblesort.sort
  end

  def test_it_sorts_a_4_3_2_1_unordered_array_with_four_elements
    bubblesort = BubbleSort.new([10,8,7,5])
    assert_equal [5,7,8,10], bubblesort.sort
  end

  def test_it_sorts_our_test_array_with_four_elements
    sorter = BubbleSort.new(["d","b","a","c"])
    assert_equal ["a", "b", "c", "d"], sorter.sort
  end

  def test_it_sorts_our_test_array_with_four_elements
    sorter = BubbleSort.new([4,7,3,9,2,5,7,4,7,8,2,5])
    assert_equal [2,2,3,4,4,5,5,7,7,7,8,9], sorter.sort
  end

  # def test_it_sorts_strings_and_integers
  #   sorter = BubbleSort.new([4,"Gus",2,"b",5])
  #   assert_equal [2,4,5,"b","Gus"], sorter.sort
  # end
end

# FRINGE ISSUES
# Sorting a letter and number array
