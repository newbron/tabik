#{icon('incoming_envelope')} *Рассылки*

Создавайте стандартные рассылки или одноразовые. Включите или выключите автоматические рассылки.

#{icon('information_source')} Обратите внимание, что рассылки отправляются раз в 5 минут в порядке общей очереди. Пожалуйста, не создавайте слишком много рассылок.
****
buts ||= []
@spam = Spam.where(bot: @tsx_bot.id)
buts = keyboard(@spam, 1) do |rec|
  s = Spam[rec[:id]]
  button("#{s.status == Spam::NEW ? icon('hourglass') : icon('white_check_mark')} #{rec[:text]}", rec[:id])
end
buts << [
     button('Создать', 'admin_create_spam'),
]
buts