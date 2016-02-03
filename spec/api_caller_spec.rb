require './app/worker/api_caller.rb'
require 'sidekiq'

describe ApiCaller do

  it { is_expected.to respond_to(:perform) }

end
