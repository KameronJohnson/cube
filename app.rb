require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/**.rb')
require('./lib/rectangle')
require('./lib/cube') #to access cube file

get('/') do #our homepage or root route
  erb(:index)
end

get('/square') do #our results page
  length = params.fetch('length')
  width = params.fetch('width')
  @rectangle = Rectangle.new(length, width)
  #now check to see if that rectangle is a square
  if @rectangle.square?()
    @cube = Cube.new(@rectangle)
    #because we initialize a new instance of cube with
      #the object @rectangle (like in specs)
  end
  erb(:square) #send back to square.erb
end
