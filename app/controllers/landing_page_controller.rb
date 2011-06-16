class LandingPageController < ApplicationController
  def index
    @person = Person.new
    render :template => "people/new"
  end
end
