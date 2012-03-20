require "saddle_pointer/version"

module SaddlePointer
  class Point
    attr_reader :x, :y
    def initialize(x, y)
      @x, @y = x, y
    end
    def ==(other)
      other.x == self.x && 
        other.y == self.y
    end
  end


  class << self
    def find array
    end
    def find_row_candidates array
      candidates = []
      array.each_with_index do |row, row_idx|
        max = row.max
        row.each_with_index do |item, col_idx|
          if item == max
            candidates << Point.new(col_idx, row_idx)
          end
        end
      end
      candidates
    end

    def find_column_candidates array
      candidates = []
      array.transpose.each_with_index do |column, col_idx|
        min = column.min
        column.each_with_index do |item, row_idx|
          if item == min
            candidates << Point.new(col_idx, row_idx)
          end
        end
      end
      candidates
    end
  end

end
