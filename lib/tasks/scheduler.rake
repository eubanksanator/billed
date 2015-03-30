require 'twilio-ruby'


desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do
  puts "Updating feed..."
  NewsFeed.update
  puts "done."
end

task :send_reminders => :environment do
  User.send_reminders
end



# put your own credentials here
account_sid = 'AC423dc892eded187de44e58e39d6bbc3d'
auth_token = '[AuthToken]'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create({
  :from => '+12248033620',
  :to => '847-508-8751',
  :body => 'Your bill is due in two days',
})
