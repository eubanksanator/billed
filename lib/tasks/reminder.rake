

desc "sends text to user that bill is due in 1 day"
task :reminder => :environment do
  User.bills.all.each do |bill|

  puts "done."

end

task :send_reminders => :environment do
  User.send_reminders
end




# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC423dc892eded187de44e58e39d6bbc3d'
auth_token = '{{ auth_token }}'
@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.account.messages.create(:body => "Jenny please?! I love you <3",
    :to => "+15558675309",
    :from => "+14158141829",
    :media_url => "http://www.example.com/hearts.png")
puts message.to


end
