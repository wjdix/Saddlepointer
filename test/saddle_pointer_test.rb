require_relative './test_helper'
require_relative '../lib/saddle_pointer'

module SaddlePointer
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

      assert_equal [Point.new(1, 3)], SaddlePointer.find(arr1)
      assert_equal "No saddle points found", SaddlePointer.find(arr2)
      assert_equal [Point.new(1,3)], SaddlePointer.find(arr3)
    end

    def test_finding_row_candidates
      arr  = [[39, 43, 49, 29, 18], 
              [30, 47, 24, 29, 15], 
              [49, 50, 39, 20, 33],
              [18, 38, 35, 32, 38], 
              [29, 44, 18, 34, 44]]
      found = SaddlePointer.find_row_candidates(arr)
      assert_includes found, Point.new(2,0)
      assert_includes found, Point.new(1,1)
      assert_includes found, Point.new(1,2)
      assert_includes found, Point.new(1,3)
      assert_includes found, Point.new(4,3)
      assert_includes found, Point.new(1,4)
      assert_includes found, Point.new(4,4)
    end

    def test_finding_column_candidates
      arr  = [[39, 43, 49, 29, 18], 
              [30, 47, 24, 29, 15], 
              [49, 50, 39, 20, 33],
              [18, 38, 35, 32, 38], 
              [29, 44, 18, 34, 44]]
      found = SaddlePointer.find_column_candidates arr
      assert_includes found, Point.new(0,3)
      assert_includes found, Point.new(1,3)
      assert_includes found, Point.new(2,4)
      assert_includes found, Point.new(3,2)
      assert_includes found, Point.new(4,1)
    end
  end
end
