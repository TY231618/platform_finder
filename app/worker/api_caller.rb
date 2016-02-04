require './lib/text.rb'

class ApiCaller

  include Sidekiq::Worker

  def initialize(text_klass = Text)
    @text = text_klass
  end

  def perform(mobile, time, start_station, end_station)
    check_with_API_every_10s(mobile, time, start_station, end_station)
  end

  private

  def contact_api(start_station, end_station)
    HTTParty.get('https://huxley.apphb.com/departures/' + start_station  + '/to/' + end_station + '/5?accessToken=e841e6e4-acfb-40bf-8879-53a69322adaa')
  end

  def find_train_in_response(response, time)
    response.to_hash['trainServices'].select{ |train| train['std'] == time}
  end

  def check_with_API_every_10s(mobile, time, start_station, end_station)

    complete = false
    until complete == true
      response = contact_api(start_station, end_station)
      selected_train = find_train_in_response(response, time)
      if selected_train.first['platform'] != nil
        send_text(mobile, selected_train)
        complete = true
      else
        sleep(10)
        puts "Checking with API for the #{time} from #{start_station}"
      end
    end
  end

  def send_text(mobile, selected_train)
    @text.send_platform(mobile, selected_train.first['platform'])
  end


end
