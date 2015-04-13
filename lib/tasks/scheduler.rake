require 'date'
require 'twilio-ruby'



namespace :reminder do
  desc "checks to see if a reminder is needed on a user to be sent as text"
  task :send => :environment do
    Bill.all.each do |bill|
      if bill.reminder == Date.today

    account_sid = Rails.application.secrets.twilio_account_sid #ENV["TWILIO_ACCOUNT_SID"]
    auth_token = Rails.application.secrets.twilio_auth_token #ENV["TWILIO_AUTH_TOKEN"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
      :from => '+12248033620',
      :to => "+1#{bill.phone_number}",
      :body => "Hello #{bill.user.username},
      this is your reminder that your #{bill.name} bill is due #{bill.due_date.to_s(:due_time)} :)",})
    puts "the text was sent for task#{bill.user_id} for #{bill.name}"
      end
      # if bill.reminder > Date.today
      #   bill.reminder = bill.reminder + 1.month
      # end
      # puts "updated"
    end
  puts "it worked"
  end
end
