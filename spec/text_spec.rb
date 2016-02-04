require 'text'


describe Text do

  it 'sends a text message to confirm platform' do
    expect(Text.send_platform(mobile: "07843699606", platform:"5", working_number: "+15005550006", my_account_sid: ENV["TEST_TWILIO_ACCOUNT_SID"],
    my_auth_token: ENV["TEST_TWILIO_AUTH_TOKEN"]).class).to equal(Twilio::REST::Message)

  end
end
