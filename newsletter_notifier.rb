require './notifier.rb'
require './email_notifier.rb'
require './sms_notifier.rb'
require './whatsapp_notifier.rb'

class NewsletterNotifier
  NOTIFIERS = [
    WhatsappNotifier,
    SMSNotifier,
    EmailNotifier
  ]

  def self.execute(msg)
    NOTIFIERS.each do |notifier|
      Notifier.new(notifier.new).send(msg)
    end
  end
end
