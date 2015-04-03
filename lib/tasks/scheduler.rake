
namespace :reminder do
  desc "checks to see if a reminder is needed on a user to be sent as text"
  task send: :environment do
    Bill.all.each do |bill|
      if bill.reminder > DateTime.now.beginning_of_day && bill.reminder < DateTime.now.beginning_of_day+1.day

        require 'twilio-ruby'
        # put your own credentials here
        account_sid = 'AC423dc892eded187de44e58e39d6bbc3d'
        auth_token = '13a9adc57d31d0aa2b8aaaf8fb84a3d7'

        # set up a client to talk to the Twilio REST API
        @client = Twilio::REST::Client.new account_sid, auth_token

        @client.account.messages.create({
          :from => '+12248033620',
          :to => '+18475088751',
          :body => 'Hello this works',
          })
        puts "it worked"
      end
      puts "it worked also"
    end
  end
end
