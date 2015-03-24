# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#changes the format display of month,day,year (must call .to_s(:due_time)) to run this format.
Time::DATE_FORMATS[:due_time] = "%b %d,  %Y"
