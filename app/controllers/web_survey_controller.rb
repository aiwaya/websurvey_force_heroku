class WebSurveyController < ApplicationController
  def index
    client = Databasedotcom::Client.new :client_id => "3MVG98XJQQAccJQd99vjXysbDsJLHGJdGvSwasAUAvNOnGsAKs0qymACgYSwvC9_9szDukaHitpZR3J4sjOIe", :client_secret => "1503327172143669282", :host=> "login.salesforce.com"
    client.authenticate(:username => "websurvey@1.com", :password => "abcd1234")

    survey_class = client.materialize("websurvey__c")
    survey = survey_class.new
    survey.q1__c = 'yes'
    survey.save
  end

end
