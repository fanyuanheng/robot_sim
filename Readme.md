## Tasks
    [robot_sim] rake -T
    rake clean                                             # Remove any temporary products.
    rake clobber                                           # Remove any generated file.
    rake robot:start[coordinate_x,coordinate_y,direction]  # Start a robot
    rake spec                                              # Run RSpec code examples

## Examples:

### a) PLACE 0,0,NORTH

    [robot_sim] rake robot:start
    Ready for instructions (move left right report)
    move report
    Current Coordinates: x = 0, y = 1, direction = north

### b) PLACE 0,0,NORTH

    [robot_sim] rake robot:start
    Ready for instructions (move left right report)
    left report
    Current Coordinates: x = 0, y = 0, direction = wests

### c) PLACE 1,2,EAST

    [robot_sim] rake robot:start[1,2,east]
    Ready for instructions (move left right report)
    move move left move report
    Current Coordinates: x = 3, y = 3, direction = north