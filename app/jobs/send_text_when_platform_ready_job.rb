class SendTextWhenPlatformReadyJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    p "##################@@@@@@@@@#########$$$$$$$$$$$$%%%%%%%%%%"
    1000000.times do
      puts "hello"
    end
  end
end
