require 'twilio-ruby'


namespace :reminder do
  desc "checks to see if a reminder is needed on a user to be sent as text"
  task send: :environment do
    Bill.all.each do |bill|
      if bill.reminder > DateTime.now.beginning_of_day && bill.reminder < DateTime.now.beginning_of_day+1.day

    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
      :from => '+12248033620',
      :to => '847-508-8751',
      :body => "Hello #{bill.user.username}, this is your reminder that your #{bill.name} bill is due tomorrow :)",
    })
    puts "the text was sent for task#{bill.user_id} for #{bill.name}"
      end

      puts "the text was not sent"
    end

  end
end
