class Triangle
  require 'open-uri'

  def initialize(filepath)
    @filepath = filepath

    @rows = open(@filepath) do |stream|
      stream.read.split("\n")
    end
  end

  def minimum_path_sum
    # TODO: return an integer = the minimum path sum of the triangle (in /data)
    prev = [0]
    @rows.each do |row|
      row = row.split(" ")
      row.each_with_index do |val, index|
        row[index] = val.to_i
        if index > 0
          row[index] += min(prev[index], prev[index - 1])
        else
          row[index] += prev[index]
        end
      end
      prev = row
    end

    prev.min
  end

  def min(*values)
    values.select { |n| n }.min
  end
end
