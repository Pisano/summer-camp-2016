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
  end
end
