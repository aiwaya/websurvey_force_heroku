# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Websurvey::Application.initialize!

################################# Please change the following parameters #######################################
ENV['sfdc_host'] = 'na11.salesforce.com'
ENV['sfdc_api_version'] = 'v23.0'
ENV['sfdc_client_id'] = '3MVG98XJQQAccJQd99vjXysbDsB_kw1g_8TaIgKSOz_pUb4FSx8iWoOoKI6dPQdvpMA3t4LJWbGAmGjR24Fa6'
ENV['sfdc_client_secret'] = '637800270968105395'

ENV['sfdc_password'] = 'abcd1234'
ENV['sfdc_user'] = 'websurvey@1.com'




