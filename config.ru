require './app'
require_relative 'bot' # you can comment this line out until you create a bot.rb file later in the tutorial

# you may need this lines in order to test your server before you create bot.rb later 
require 'facebook/messenger'
#include Facebook::Messenger

# run both Sinatra and facebook-messenger on /webhook
map("/webhook") do
  run Sinatra::Application
  run Facebook::Messenger::Server
end

# run regular sinatra for other paths (in case you ever need it)
run Sinatra::Application