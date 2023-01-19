require './notifier.rb'
require './email_notifier.rb'
require './sms_notifier.rb'
require './whatsapp_notifier.rb'

Notifier.new(WhatsappNotifier.new).send("Olá")
Notifier.new(EmailNotifier.new).send("Olá")
Notifier.new(SMSNotifier.new).send("Olá")
