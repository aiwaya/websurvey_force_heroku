# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Websurvey::Application.initialize!

################################# Please chnage the following parameters #######################################
ENV['sfdc_host'] = 'na11.salesforce.com'
ENV['sfdc_api_version'] = 'v23.0'
ENV['sfdc_client_id'] = '3MVG98XJQQAccJQd99vjXysbDsJLHGJdGvSwasAUAvNOnGsAKs0qymACgYSwvC9_9szDukaHitpZR3J4sjOIe'
ENV['sfdc_client_secret'] = '1503327172143669282'

ENV['sfdc_password'] = 'abcd1234'
ENV['sfdc_user'] = 'websurvey@1.com'




