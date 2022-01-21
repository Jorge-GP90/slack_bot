require "slack-notify"
require 'clockwork'
include Clockwork



# sample = SlackNotify::Client.new(
#     webhook_url: 'https://hooks.slack.com/services/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'
#     )

# bot = sample.notify("Hello there!", "#general")


	
module Clockwork
 
    def one_minute
      p "minutely job"
    end
   
    def thirty
      p "30 seconds"
    end
   
   
    handler do |job|
      self.send(job.to_sym)
    end
   
    every(1.minute, 'one_minute')
    every(30.seconds, 'thirty')
  end