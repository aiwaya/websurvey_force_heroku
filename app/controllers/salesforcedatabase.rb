require 'httparty'

class Salesforcedatabase
  include HTTParty

  format :json

  def initialize
    login
  end


  def get_poll id

  end


  def all_surveys
    url = @root_url + "/query/?q=#{CGI::escape('SELECT Name, Id, body__c from survey__c')}"
    res = self.class.get(url, :headers => self.class.headers)
    res['records']
  end

  def create_poll survey_id, question1, question2
    self.class.headers 'Content-Type' => "application/json"

    options = {
        :body => {
            :q1__c => question1,
            :q2__c => question2,
            :survey__c => survey_id
        }.to_json
    }

    url = @root_url + "/sobjects/poll__c/"
    res = self.class.post(url, options)


  end



  private

  def login
    client_id = '3MVG98XJQQAccJQd99vjXysbDsJLHGJdGvSwasAUAvNOnGsAKs0qymACgYSwvC9_9szDukaHitpZR3J4sjOIe'
    client_secret = '1503327172143669282'
    host = 'na11.salesforce.com'
    password = 'abcd1234'
    username = 'websurvey@1.com'
    api_version = 'v23.0'

    auth_login = "https://#{host}/services/oauth2/token"
    headers = { 'Content-Type' => 'application/x-www-form-urlencoded' }
    url = auth_login + "?grant_type=password&client_id=#{client_id}&client_secret=#{client_secret}&password=#{password}&username=#{username}"
    res = self.class.post(url, :headers => headers)
    @access_token = res['access_token']
    @instance_url = res['instance_url']
    @root_url = @instance_url + "/services/data/#{api_version}"
    self.class.headers 'Authorization' => 'OAuth ' + @access_token
  end
end