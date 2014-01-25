require 'rake/clean'
require 'rspec/core/rake_task'
require 'highline/import'

require './robot'

CLEAN.include('reports')

RSpec::Core::RakeTask.new(:spec) do |task|
  task.pattern = 'spec/**/*_spec.rb'
  task.rspec_opts = ['-f progress -f h -o reports/result.html']
end

namespace :robot do

  desc 'Start a robot'
  task :start, [:coordinate_x, :coordinate_y, :direction] do |t, args|
    args.with_defaults :coordinate_x => 0, :coordinate_y => 0, :direction => :north
    robot = Robot.new(args.coordinate_x.to_i, args.coordinate_y.to_i, args.direction.to_sym)
    ask('Ready for instructions (move left right report)', lambda { |str| str.split(' ').each { |action| robot.send(action.to_sym) } })
  end

end
