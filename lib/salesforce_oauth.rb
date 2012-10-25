require 'rubygems'
require 'httparty'

class SalesforceOauth
  include HTTParty
  
  format :json
  
  def login
    auth_login = 'https://na11.salesforce.com/services/oauth2/token'
    headers = { 'Content-Type' => 'application/x-www-form-urlencoded' }
    url = auth_login + '?grant_type=password&client_id=' + ENV['client_id'] + '&client_secret=' + ENV['client_secret'] + '&password=' + ENV['password'] + '&username=' + ENV['username']
    self.class.post(url, :headers => headers)  
  end
end