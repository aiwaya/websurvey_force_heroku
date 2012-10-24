class WebSurveyController < ApplicationController
  def index

    client = Databasedotcom::Client.new :client_id => "3MVG9lKcPoNINVBL1iUvM1GVTMDlSGNB4nMCX5IU9Ww1dnQHBC.YMkaH_8EnRDkgGrfdePK1Oe8rUCGMoZd6B", :client_secret => "2405887836979254114", :host=> "prerellogin.pre.salesforce.com"
    client.authenticate(:username => "aiwaya@gmail.com", :password => "abcd1234")

    @objs = client.list_sobjects


    id = '3MVG98XJQQAccJQd99vjXysbDsJLHGJdGvSwasAUAvNOnGsAKs0qymACgYSwvC9_9szDukaHitpZR3J4sjOIe'
    secret = '1503327172143669282'
    client = Databasedotcom::Client.new :client_id => id, :client_secret => secret
    client.authenticate(:username => "websurvey@1.com", :password => "abcd1234")


#client.create('websurvey__c', 'q1__c' => 'sdsd')

  end


end
