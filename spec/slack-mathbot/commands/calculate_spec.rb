require 'spec_helper'
require_relative '../../../slack-mathbot/about'
describe SlackMathbot::Commands::Calculate do
  def app
    SlackMathbot::Bot.instance
  end
  it 'adds two numbers' do
    expect(message: 'den 42+2', channel: 'channel').to respond_with_slack_message('42+2 = 44')
  end
  it 'sends something without an answer' do
    expect(message: 'den hello',
           channel: 'channel').to respond_with_slack_message("Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
  end
  it 'sends info' do
    expect(message: 'den info', channel: 'channel').to respond_with_slack_message(About.new.description)
  end
  it 'sends greet ' do
    expect(message: 'den greet', channel: 'channel').to respond_with_slack_message('Hello')
  end
end
