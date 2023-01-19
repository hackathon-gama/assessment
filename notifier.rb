class Notifier
  attr_reader :notifier_strategy

  def initialize(notifier_strategy)
    @notifier_strategy = notifier_strategy
  end

  def send(msg)
    notifier_strategy.send(msg)
  end
end
