module SlackMathbot
  class Bot < SlackRubyBot::Bot
  	help do
      title 'Den'
      desc 'A bot that performs addition'

    command 'greet' do
      title 'greet'
      desc 'greets by saying hello'
      long_desc 'returns hello when bot is ...'
    end

    command 'info' do
	  title 'info'
      desc 'displays complete information about the bot'
      long_desc 'displays complete information about the bot and '
    end
  end
end
end