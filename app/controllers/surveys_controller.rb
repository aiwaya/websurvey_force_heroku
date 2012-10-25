class SurveysController < ApplicationController
  before_filter :login

  def index
    @rows = []
    surveys = @sfdc.all_surveys
    surveys.each do |survey|
      @rows << {'id' => survey['Id'], 'name' => survey['Name'], 'body' => survey['body__c']}
    end
  end

  def new
    @survey_id = params[:id]
  end

  def create
    @sfdc.create_poll params[:id], params[:question1], params[:question2]
  end

  private

  def login
    @sfdc = Salesforcedatabase.new()
  end

end
