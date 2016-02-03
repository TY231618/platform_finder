class ApiCaller

  include Sidekiq::Worker

  def perform()
    10000000.times do
      p 'hello'
    end
  end
end
