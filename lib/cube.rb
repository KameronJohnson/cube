class Cube
  define_method(:initialize) do |square|
    #Cube initialized with rectangle object |square|
    @square = square
    #setting this rectangle object |square| equal to @square
    #when we call the Cube.new method in app.rb, we will check
      #to make sure the rectangle is a square.
  end

  define_method(:volume) do
    @square.length().**(3) # **(3) == ^3 (power of 3)
    #length() method defined in rectangle.rb file
  end

  define_method(:surface_area) do
    @square.area().*(6)
    #make a new method for area in rectange_spec.rb: length*width
  end
end
