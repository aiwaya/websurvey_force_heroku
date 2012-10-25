require 'rubygems'
require 'httparty'
require 'salesforce_oauth'

class SalesforceSetting
  include HTTParty

  format :json

  def initialize
    res = SalesforceOauth.new().login
    @access_token = res['access_token']
    @instance_url = res['instance_url']    
    @root_url = @instance_url + '/services/data/' + ENV['sfdc_api_version']
  end

  def headers
    { 'Authorization' => 'OAuth ' + @access_token }
  end

  def get_record_from_sfdc
    url = @root_url + "/query/?q=#{CGI::escape('SELECT id, name, picasa__c, hometitle__c, chattercolor__c, whatsnew__c, cloudtag__c, anonymousimg__c, anonymousid__c, bcolor__c, bodybg__c, bodycenter__c,  compinfo__c, t_bg__c, t_keyword__c, t_title1__c, t_title2__c, userimg__c from z_setting__c Where id =\''+ ENV['setting_id'] + '\' LIMIT 1')}"    
    puts url
    res = self.class.get(url, :headers => headers)
    puts res
    res
  end

end