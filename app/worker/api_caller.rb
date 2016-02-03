require './lib/text.rb'

class ApiCaller

  include Sidekiq::Worker

  def perform(mobile, time, start_station, end_station)
    complete = false
    until complete == true
      response = HTTParty.get('https://huxley.apphb.com/departures/' + start_station  + '/to/' + end_station + '/5?accessToken=e841e6e4-acfb-40bf-8879-53a69322adaa')
      selected_train = response.to_hash['trainServices'].select{ |train| train['std'] == time}
      if selected_train.first['platform'] != nil
        Text.get_text(mobile, selected_train.first['platform'])
        complete = true
      else
        sleep(10)
        puts "Checking with API"
      end
    end
  end
end
