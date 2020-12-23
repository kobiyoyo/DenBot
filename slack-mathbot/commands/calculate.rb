
require_relative '../about.rb'
require 'dentaku'
module SlackMathbot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
    
    command 'greet' do |client, data, _match|
      client.say(channel: data.channel, text: 'Hello')
    end

    command 'info' do |client, data, _match|
      client.say(channel: data.channel, text: About.new.description, gif: 'math')
    end
     match(/^(?<bot>\w*)\s(?<expression>.*)$/) do |client, data, match|
        result = Dentaku::Calculator.new.evaluate(match['expression'].strip) if match.names.include?('expression')
        result = result.to_s if result
        if result && result.length > 0
          client.say(channel: data.channel, text:"#{match[:expression]} = #{result}" )
        else
          client.say(channel: data.channel, text: "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
        end   
      end

    end
  end
end 