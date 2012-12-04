# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Websurvey::Application.initialize!

################################# Please change the following parameters #######################################
ENV['sfdc_host'] = 'xxx.salesforce.com'
ENV['sfdc_api_version'] = 'v23.0'
ENV['sfdc_client_id'] = 'xxxxxxxx'
ENV['sfdc_client_secret'] = 'xxxxxxxx'

ENV['sfdc_password'] = 'xxxxxx'
ENV['sfdc_user'] = 'xxxxxx@xxxx.com'




