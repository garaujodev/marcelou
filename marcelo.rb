# frozen_string_literals: true

require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Bot.new token: ENV['DISCORD_TOKEN']

responses = [
  "Marcelou demais!",
  "Tem cheiro, cor e aparência de uma Marcelada!",
  "Esse aí Marcelou com gosto!",
  "Foi uma marcelada e tanto!",
  "Marcelou pra caralho meu parceiro"
]

bot.message(containing: 'Marcelou?') do |event|
  response_id = rand(0..4)

  event.respond responses[response_id]
end

bot.mention do |event|
  response_id = rand(0..4)

  event.respond responses[response_id]
end

bot.run