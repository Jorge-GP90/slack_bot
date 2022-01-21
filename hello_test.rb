require "slack-notify"
require 'clockwork'
include Clockwork





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