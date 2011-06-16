class LandingPageController < ApplicationController
  def index
    @person = Person.new
    render :action => "people/new"
  end
end
