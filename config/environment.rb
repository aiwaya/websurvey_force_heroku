# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Websurvey::Application.initialize!

################################# Please chnage the following parameters #######################################
ENV['sfdc_api_version'] = 'v23.0'


ENV['client_id'] = '3MVG98XJQQAccJQd99vjXysbDsJLHGJdGvSwasAUAvNOnGsAKs0qymACgYSwvC9_9szDukaHitpZR3J4sjOIe'


ENV['client_secret'] = '1503327172143669282'
ENV['password'] = 'abcd1234'
ENV['username'] = 'websurvey@1.com'

ENV['basic_user'] = 'websurvey@1.com'
ENV['basic_pw'] = 'abcd1234'


