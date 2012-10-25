class WebSurveyController < ApplicationController
  before_filter :login, :only => ''

  def index
    @sfdc.create_poll
    p 'asasa'
  end


  private

  def login
    @sfdc = Salesforcedatabase.new()
  end


end