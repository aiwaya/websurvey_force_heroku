require 'rubygems'
require 'httparty'
require 'salesforce_oauth'
require 'cgi'

class SalesforceBlog
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

  def all
    url = @root_url + "/query/?q=#{CGI::escape('SELECT Name, Id from Account LIMIT 10')}"
    res = self.class.get(url, :headers => headers)
    res['records']
  end
end