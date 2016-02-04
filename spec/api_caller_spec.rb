require './app/worker/api_caller.rb'
require 'sidekiq/testing'
Sidekiq::Testing.fake!

describe ApiCaller do

  subject(:api_caller) {described_class}
  let(:mobile) {'07843999999'}
  let(:time) {'19:10'}
  let(:start_station) {'CST'}
  let(:end_station) {'LEW'}

  it 'puts jobs in to the queue' do
    expect { api_caller.perform_async(mobile, time, start_station, end_station) }.to change(api_caller.jobs, :size).by(1)
  end

end
