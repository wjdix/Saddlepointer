require_relative './test_helper'
require_relative '../lib/saddle_pointer'

class SaddlePointerTest < MiniTest::Unit::TestCase
  def test_the_sample_arrays
    arr1 = [[39, 43, 49, 29, 18],
            [30, 47, 24, 29, 15], 
            [49, 50, 39, 20, 33],
            [18, 38, 35, 32, 35],
            [29, 44, 18, 34, 44]]

    arr2 = [[50, 27, 36, 43, 39],
            [36, 14, 35, 40, 19],
            [20, 33, 48, 32, 40],
            [41, 40, 15, 22, 19],
            [21, 24, 24, 31, 18]]

    arr3 = [[39, 43, 49, 29, 18], 
            [30, 47, 24, 29, 15], 
            [49, 50, 39, 20, 33],
            [18, 38, 35, 32, 38], 
            [29, 44, 18, 34, 44]]

    assert_equal [[3, 1]], SaddlePointer.find(arr1)
    assert_equal "No saddle points found", SaddlePointer.find(arr2)
    assert_equal [[3,1]], SaddlePointer.find(arr3)
  end
end
