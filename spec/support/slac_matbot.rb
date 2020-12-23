RSpec.configure do |config|
  config.before do
    SlackRubyBot.config.user = 'den'
  end
end
