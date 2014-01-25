require './robot'

describe 'Robot' do

  before(:each) do
    @robot = Robot.new(0, 0, :north)
  end

  it 'should move' do
    @robot.move.coordinate_y.should == 1
  end

  it 'should turn left' do
    @robot.left.direction.should == :west
  end

  it 'should turn right' do
    @robot.right.direction.should == :east
  end

  it 'should not fall' do
    8.times do
      @robot.move
    end
    @robot.coordinate_y.should == 4
  end

end