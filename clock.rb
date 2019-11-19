require 'slack-notifier'
require 'clockwork'

# You will be able to use a method to indicate time, such as minutes, if you require the gem below, so it is recommended to write it.

require 'active_support/time'

module Clockwork
  handler do |send|
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping('whats up cherif')
  end
  every(3.seconds, 'send')
end
