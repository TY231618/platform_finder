require 'twilio-ruby'

class Text


  def self.get_text(mobile, platform, working_number = ENV['WORKING_NUMBER'],
    my_account_sid = ENV['TWILIO_ACCOUNT_SID'],
    my_auth_token = ENV['TWILIO_AUTH_TOKEN'])


    account_sid = my_account_sid
    auth_token = my_auth_token

   @client = Twilio::REST::Client.new account_sid, auth_token

   @message = @client.messages.create(
     to: mobile.to_i,
     from: working_number,
     body: "Thanks for using our app! Your platform number is #{platform}"
   )
  end

end
