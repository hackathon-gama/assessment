require './action.rb'
require './action1.rb'
require './action2.rb'
require './action3.rb'
require './action4.rb'
require './action5.rb'
require './action6.rb'

[Action1.new, Action2.new, Action3.new, Action4.new, Action5.new, Action6.new].each do |action|
  Action.new(action).call
end
