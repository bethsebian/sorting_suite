gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'insertion_sort'

class InsertionTest < Minitest::Test
  def test_we_have_an_unsorted_list # is this right?
    sorter = InsertionSort.new([])
    assert sorter.unsorted
  end

  def test_we_have_a_sorted_list
    sorter = InsertionSort.new([])
    assert sorter.sorted, "Actually, turns out we don't have a sorted list."
  end

  def test_it_sorts_an_empty_array
    sorter = InsertionSort.new([])
    assert_equal [], sorter.sort
  end

  def test_it_sorts_an_array_of_one
    sorter = InsertionSort.new([1])
    assert_equal [1], sorter.sort
  end

  def test_it_sorts_a_different_array_of_one
    sorter = InsertionSort.new([7])
    assert_equal [7], sorter.sort
  end

  def test_it_adds_the_second_element_in_the_right_place_if_greater
    sorter = InsertionSort.new([2,7])
    assert_equal [2,7], sorter.sort
  end

  def test_it_adds_the_second_element_in_the_right_place_if_less_than
    sorter = InsertionSort.new([2,1])
    assert_equal [1,2], sorter.sort
  end

  def test_it_sorts_a_sorted_array_of_two
    sorter = InsertionSort.new([2,7])
    assert_equal [2,7], sorter.sort
  end

  def test_it_sorts_a_sorted_array_of_two_strings
    sorter = InsertionSort.new(["baloney","gus"])
    assert_equal ["baloney","gus"], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_two
    sorter = InsertionSort.new([7,2])
    assert_equal [2,7], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_two_strings
    sorter = InsertionSort.new(["gus","baloney"])
    assert_equal ["baloney","gus"], sorter.sort
  end

  def test_it_sorts_an_array_of_either_two_or_three_strings
    sorter = InsertionSort.new([1,4,3])
    assert_equal [1,3,4], sorter.sort
  end

  def test_it_sorts_an_array_of_either_two_or_three_strings_alt
    sorter = InsertionSort.new([1,4])
    assert_equal [1,4], sorter.sort
  end

  def test_it_sorts_a_sorted_array_of_three
    sorter = InsertionSort.new([2,3,7])
    assert_equal [2,3,7], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_three
    sorter = InsertionSort.new([2,7,3])
    assert_equal [2,3,7], sorter.sort
  end

  def test_it_sorts_a_different_unsorted_array_of_three_732
    sorter = InsertionSort.new([7,3,2])
    assert_equal [2,3,7], sorter.sort
  end

  def test_it_sorts_a_different_unsorted_array_of_three_327
    sorter = InsertionSort.new([3,2,7])
    assert_equal [2,3,7], sorter.sort
  end

  def test_it_captures_initial_unsorted_arrays_length
    sorter = InsertionSort.new([3,2,7])
    assert_equal 3, sorter.array_length
  end

  def test_it_sorts_an_unsorted_array_of_four_1723
    sorter = InsertionSort.new([1,7,2,3])
    assert_equal [1,2,3,7], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_four_7132
    sorter = InsertionSort.new([7,1,3,2])
    assert_equal [1,2,3,7], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_four_3271
    sorter = InsertionSort.new([3,2,7,1])
    assert_equal [1,2,3,7], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_four_7213
    sorter = InsertionSort.new([7,2,1,3])
    assert_equal [1,2,3,7], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_four_7231
    sorter = InsertionSort.new([7,2,3,1])
    assert_equal [1,2,3,7], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_four_3127
    sorter = InsertionSort.new([3,1,2,7])
    assert_equal [1,2,3,7], sorter.sort
  end

  def test_it_sorts_an_unsorted_array_of_four_3217
    sorter = InsertionSort.new([3,2,1,7])
    assert_equal [1,2,3,7], sorter.sort
  end

  # FRING ISSUES #
    # def test_it_sorts_an_empty_array # REWRITE : if there's no argument passed at all
    #   skip
    # end
    #
    # def test_it_sorts_an_array_of_strings_and_integers # REWRITE : if there's no argument passed at all
    #   skip
    # end
end
