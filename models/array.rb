class Array3D
   def initialize(d1,d2,d3)
    @data = Array.new(d1) { Array.new(d2) { Array.new(d3) } }
   end

  def [](x, y, z)
    @data[x][y][z]
  end

  def []=(x, y, z, value)
    @data[x][y][z] = value
  end
end
