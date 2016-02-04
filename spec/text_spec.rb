require 'text'


describe Text do

  it 'sends a text message to confirm platform' do
    expect(messages).to receive(:create)
    Text.send_platform("07843699606", "5", "+15005550006", ENV["TEST_TWILIO_ACCOUNT_SID"],
    ENV["TEST_TWILIO_AUTH_TOKEN"])
    # expect(Text.message).not_to eq nil
  end
end
