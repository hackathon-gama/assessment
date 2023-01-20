class Action
  attr_reader :action_strategy

  def initialize(action_strategy)
    @action_strategy = action_strategy
  end

  def call
    action_strategy.call
  end
end
