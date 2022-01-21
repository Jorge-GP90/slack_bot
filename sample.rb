require "slack-notify"
require 'clockwork'
include Clockwork
require 'active_support'

module Clockwork
  
  
  handler do |job|
  
   
    
    bot = sample.notify("Hello there!", "#general")
    bot_one = sample.notify(":)", "#general")
  
    case job
    when "ten_sec.job"
      puts "#{bot_one}"
    when "three.job"
      puts "#{bot}"
    end
  end
  

  every(3.minutes, 'three.job')
  # every(10.seconds, 'ten_sec.job')

end

